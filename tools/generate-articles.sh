#!/usr/bin/env bash
# generate-articles.sh
################################################################################
#
# A script to parse some files and convert them into RANews articles
#
# # Input file formats
######################
#
# line starts with -> what it means
# 
# `integer ` -> set release
# `rev ` -> revision
# `res ` -> rescore
# `art ` -> art update
# 
# 
# ## Set Release
# ```
# gameId[*] author
# ```
# 
# If gameId is followed by an asterisk, then it's a revision.
# 
# ```
# 3346    Bl4h8L4hBl4h
# 4628*   mopain85
# ```
# 
# ## Revision
# ```
# gameId statusCode author
# ```
# 
# Note: multiple authors are separated by a `,` coma
# 
# Status codes:
# ```
# C = Cancelled
# D = Demotion (Completed)
# F = Finished
# N = New (New can be considered same as WIP for monthly)
# W = WIP
# ```
# 
# examples:
# 
# ```
# rev 320 C mario2188
# rev 12771 D HolyShinx
# ```
# 
# ## Rescores
# ```
# gameId user pointsBefore pointsAfter
# ```
# 
# examples:
# ```
# res 1456  StingX2 400 205
# res 3661  Xymjak,Javisaur 400 114
# ```
# 
# ## Art Update (Badges and Icons)
# ```
# gameId typeCode user artBefore artAfter
# ```
#
# typeCode:
# ```
# I = Icon
# B = Badge
# ```
# 
# examples:
# ```
# art 11306 I Javisaur  http://retroachievements.org/Images/026620.png  https://i.imgur.com/8KChcfN.png
# art 2190  I Lenif https://retroachievements.org/Images/003133.png https://i.imgur.com/rtaSIr0.png
# ```
# 
# meleu - August/2020
#
################################################################################


# GLOBALS
################################################################################

# the solution below does not work when sourcing a file
# readonly SCRIPT_DIR="$(cd "$(dirname $0)" && pwd)"

readonly DOT_ENV='./.env'
readonly BASE_URL='https://retroachievements.org'
readonly ENDPOINT='/API/API_GetGame.php'

declare -A REGEX REVISION_STATUS ART_TYPE
REGEX=(
  # gameId[*] author
  [release]='^([0-9]+)(\*)?[[:space:]]+([^[:space:]]+)$'
  # gameId-----^ isRev--^   author------^

  # rev gameId statusCode author
  [revision]='rev[[:space:]]+([0-9]+)[[:space:]]+([cdfnw])[[:space:]]+([^[:space:]]+)'
  #                gameId-----^    statusCode-----^         author-----^

  # res gameId author pointsBefore pointsAfter
  [rescore]='res[[:space:]]+([0-9]+)[[:space:]]+([^[:space:]]+)[[:space:]]+([0-9]+)[[:space:]]+([0-9]+)'
  #               gameId-----^          author---^          pointsBefore----^    pointsAfter----^

  # art gameId typeCode user urlBefore urlAfter
  [art]='art[[:space:]]+([0-9]+)[[:space:]]+([bi])[[:space:]]+([^[:space:]]+)[[:space:]]+([^[:space:]]+)[[:space:]]+([^[:space:]]+)'
  #            gameId----^         artType---^        author---^             urlBefore----^              urlAfter----^
)

REVISION_STATUS=(
  [c]='cancelled'
  [d]='demoted'
  # [f]='finished' # using 'revision'. sets-released article will have only new sets
  [f]='revision'
  [n]='wip' # originally 'n' would mean "wip started this month", but it doesn't matter
  [w]='wip'
)

ART_TYPE=(
  [i]='icon'
  [b]='badge'
)

# shell options
################################################################################
shopt -s extglob      # for elementInArray()
shopt -s nocasematch  # for stronger regexes


# functions
################################################################################
joinBy() {
  local IFS="$1"
  echo "${*:2}"
}


elementInArray() {
  local element="$1"
  local array=("${@:2}")
  [[ "$element" == @($(joinBy '|' "${array[@]//|/\\|}")) ]]
}


# get a value from .env file
readEnv() {
  local key="$1"
  local envFile="$2" # optional
  local value

  [[ -z "$envFile" ]] && envFile="$DOT_ENV"
  [[ -f "$envFile" ]] || return 1

  IFS='=' read -r key value <<< "$(grep --max-count=1 "^${key}=" "${envFile}")"
  echo "${value}"
}


# getRAGameInfo()
#################
# Get game info from RetroAchievements.org (if it's not present in ${rawFile})
# and generate a "raw list" line from it.
#
# NOTE:
# Assumes ${raUser}, ${raApiKey}, ${rawFile}, ${gameId} and ${typeRegex} are properly filled.
getRAGameInfo() {
  grep --extended-regexp --quiet \
    ":::${gameId}:::.*:::${typeRegex}" \
    "${rawFile}" \
    2> /dev/null \
    && return 1

  curl --silent "${BASE_URL}${ENDPOINT}?z=${raUser}&y=${raApiKey}&i=${gameId}" \
    | jq -r '. | .Title + ":::" + .Console + ":::" + .GameIcon + ":::" +  if ( .Genre == null) then "-" else .Genre end'
}


# parsing a line with "Set Release" info
# gameId[*] author
parseReleaseLine() {
  local line="${1}"
  local typeRegex='(release|revision)'
  local gameId
  local revisionFlag
  local author
  local outputLine

  [[ ${line} =~ ${REGEX[release]} ]] || return 1
  gameId="${BASH_REMATCH[1]}"
  revisionFlag="${BASH_REMATCH[2]}"
  author="${BASH_REMATCH[3]}"

  outputLine="$(getRAGameInfo "${gameId}" "${typeRegex}")"
  [[ -z "${outputLine}" ]] && return 1

  outputLine+=":::${gameId}:::${author}:::"
  [[ -n "${revisionFlag}" ]] && outputLine+='revision' || outputLine+='release'

  echo "${outputLine}"
}


# rev gameId statusCode author
parseRevisionLine() {
  local line="${1}"
  local typeRegex='(cancelled|demoted|revision|wip)'
  local gameId
  local statusCode
  local author
  local outputLine

  [[ ${line} =~ ${REGEX[revision]} ]] || return 1
  gameId="${BASH_REMATCH[1]}"
  statusCode="${BASH_REMATCH[2],,}" # assure it's lowercase
  author="${BASH_REMATCH[3]}"

  outputLine="$(getRAGameInfo "${gameId}" "${typeRegex}")"
  [[ -z "${outputLine}" ]] && return 1

  outputLine+=":::${gameId}:::${author}:::${REVISION_STATUS[$statusCode]}"

  echo "${outputLine}"
}


# res gameId author pointsBefore pointsAfter
parseRescoreLine() {
  local line="${1}"
  local typeRegex='rescore'
  local gameId
  local author
  local pointsBefore
  local pointsAfter

  [[ ${line} =~ ${REGEX[rescore]} ]] || return 1
  gameId="${BASH_REMATCH[1]}"
  author="${BASH_REMATCH[2]}"
  pointsBefore="${BASH_REMATCH[3]}"
  pointsAfter="${BASH_REMATCH[4]}"

  outputLine="$(getRAGameInfo "${gameId}" "${typeRegex}")"
  [[ -z "${outputLine}" ]] && return 1

  outputLine+=":::${gameId}:::${author}:::rescore:::${pointsBefore}:::${pointsAfter}"

  echo "${outputLine}"
}


# art gameId artType author urlBefore urlAfter
parseArtLine() {
  local line="${1}"
  local typeRegex='(icon|badge)'
  local gameId
  local artType
  local author
  local urlBefore
  local urlAfter

  [[ ${line} =~ ${REGEX[art]} ]] || return 1
  gameId="${BASH_REMATCH[1]}"
  artType="${BASH_REMATCH[2],,}" # assure it's lowercase
  author="${BASH_REMATCH[3]}"
  urlBefore="${BASH_REMATCH[4]}"
  urlAfter="${BASH_REMATCH[5]}"

  outputLine="$(getRAGameInfo "${gameId}" "${typeRegex}")"
  [[ -z "${outputLine}" ]] && return 1

  outputLine+=":::${gameId}:::${author}:::${ART_TYPE[$artType]}:::${urlBefore}:::${urlAfter}"

  echo "${outputLine}"
}


# TODO: add a description
createRawList() {
  local line
  local entryType
  local outputLine

  # `[0-9]+\*? ` -> set release
  # `rev ` -> revision
  # `res ` -> rescore
  # `art ` -> art update
  local regexEntryType='^([0-9]+\*?|rev|res|art)[[:space:]]'

  while IFS= read -r line || [[ -n "$line" ]]; do
    [[ ${line} =~ ${regexEntryType} ]] || continue
    entryType="${BASH_REMATCH[1]}"

    case "${entryType}" in
      rev) 
        outputLine="$(parseRevisionLine "${line}")" || continue
        ;;
      res)
        outputLine="$(parseRescoreLine "${line}")" || continue
        ;;
      art)
        outputLine="$(parseArtLine "${line}")" || continue
        ;;
      *) # set release
        outputLine="$(parseReleaseLine "${line}")" || continue
        ;;
    esac

    echo "${outputLine}" | tee --append "${rawFile}"
  done < "${inputFile}"

  sort -o "${rawFile}" "${rawFile}"
}


formatReleaseTable() {
  # TODO: check if author is a list of authors (coma separated)
  echo \
    "| <a class=\"gameicon-link\" href=\"https://retroachievements.org/game/${gameId}\" target=\"_blank\" rel=\"noopener\">" \
    "<img class=\"gameicon\" src=\"https://retroachievements.org${gameIconUri}\" alt=\"${gameTitle}\">" \
    "<span>${gameTitle}</span></a>" \
    "| {% rauser ${author} %}" \
    "| ${gameGenre} |"
}


formatRescoreTable() {
  # TODO: check if author is a list of authors (coma separated)
  echo \
    "| <a class=\"gameicon-link\" href=\"https://retroachievements.org/game/${gameId}\" target=\"_blank\" rel=\"noopener\">" \
    "<img class=\"gameicon\" src=\"https://retroachievements.org${gameIconUri}\" alt=\"${gameTitle}\">" \
    "<span>${gameTitle}</span></a>" \
    "| {% rauser ${author} %}" \
    "| ${before} | ${after} |"
}

formatIconTable() {
  # TODO: check if author is a list of authors (coma separated)
  echo \
    "| <a class=\"gameicon-link\" href=\"https://retroachievements.org/game/${gameId}\" target=\"_blank\" rel=\"noopener\">" \
    "<img class=\"gameicon\" src=\"https://retroachievements.org${gameIconUri}\" alt=\"${gameTitle}\">" \
    "<span>${gameTitle}</span></a>" \
    "| {% rauser ${author} %}" \
    "| <img class=\"gameicon\" src=\"${before}\" alt=\"old icon\">"
}

formatBadgesInfo() {
  # TODO: check if author is a list of authors (coma separated)
  echo -e \
    "\n#### ${gameTitle}\n" \
    "\n**Badges by {% rauser ${author} %}**" \
    "\n**Previous Badges:**\n\n![before](${before})\n" \
    "\n**Current Badges:**\n\n![after](${after})\n"
}


# put each raw entry in "${inputFile}-${entryType}-${consoleName}.md"
separateByConsole() {
  local regexRawEntry1='^(.+):::(.+):::(.+):::(.+):::(.+):::(.+):::(.+):::(.+):::(.+)$'
  local regexRawEntry2='^(.+):::(.+):::(.+):::(.+):::(.+):::(.+):::(.+)$'
  # gameTitle:::consoleName:::gameIconUri:::gameGenre:::gameId:::author:::entryType[:::before:::after]

  local gameTitle
  local consoleName
  local gameIconUri
  local gameGenre
  local gameId
  local author
  local entryType
  local outputLine

  # TODO: this rm looks dangerous. make it stronger.
  rm -f "${baseFilename}-*-*.md"

  while IFS= read -r line || [[ -n "$line" ]]; do
    [[ $line =~ $regexRawEntry1 ]] \
      || [[ $line =~ $regexRawEntry2 ]] \
      || continue
    gameTitle="${BASH_REMATCH[1]//|/\\|}"
    consoleName="${BASH_REMATCH[2]}"
    gameIconUri="${BASH_REMATCH[3]}"
    gameGenre="${BASH_REMATCH[4]}"
    gameId="${BASH_REMATCH[5]}"
    author="${BASH_REMATCH[6]}"
    entryType="${BASH_REMATCH[7]}"
    before="${BASH_REMATCH[8]}"
    after="${BASH_REMATCH[9]}"

    case "${entryType}" in
      release|revision|cancelled|demoted|wip)
        outputLine="$(formatReleaseTable)"
        ;;

      rescore)
        outputLine="$(formatRescoreTable)"
        ;;

      icon)
        outputLine="$(formatIconTable)"
        ;;

      badge)
        outputLine="$(formatBadgesInfo)"
        ;;
    esac

    echo "${outputLine}" >> "${baseFilename}-${entryType}-${consoleName}.md"

    elementInArray "${consoleName}" "${consoleList[@]}" || consoleList+=( "${consoleName}" )
    #elementInArray "${entryType}" "${entryTypeList[@]}" || entryTypeList+=( "${entryType}" )
  done < "${rawFile}"
}


createFinalFile() {
  local file
  local entryType
  local consoleName
  local heading
  local tableHeader

  : > "${finalFile}"
  for entryType in "${entryTypeList[@]}"; do

    case "${entryType}" in
      release)
        heading='## New Sets Released'
        tableHeader='\n| Game | Author | Genre |'
        tableHeader+='\n|------|--------|-------|'
        ;;
      revision)
        heading='## Revisions'
        tableHeader='\n| Game | Revision By | Genre |'
        tableHeader+='\n|------|-------------|-------|'
        ;;
      wip)
        heading='## Revisions in Progress'
        tableHeader='\n| Game | Revision Author | Genre |'
        tableHeader+='\n|------|-----------------|-------|'
        ;;
      demoted)
        heading='## Demoted Sets'
        tableHeader='\n| Game | Demotion By | Genre |'
        tableHeader+='\n|------|-------------|-------|'
        ;;
      cancelled)
        heading='## Revisions Cancelled'
        tableHeader='\n| Game | Author | Genre |'
        tableHeader+='\n|------|--------|-------|'
        ;;
      rescore)
        heading='## Rescores'
        tableHeader='\n| Game | Rescored By | Points Before | Points After |'
        tableHeader+='\n|------|-----------|:-------------:|:------------:|'
        ;;
      icon)
        heading='## Game Icon Changes'
        tableHeader='\n| Game | Icon By | Icon Before |'
        tableHeader+='\n|------|---------|-------------|'
        ;;
      badge)
        heading='## Achievement Badges Changes'
        tableHeader='\n'
        ;;
    esac

    echo "${heading}" >> "${finalFile}"

    for consoleName in "${sortedConsoleList[@]}"; do
      file="${baseFilename}-${entryType}-${consoleName}.md"
      [[ -f "${file}" ]] || continue
      
      echo -e "\n### ${consoleName}\n" >> "${finalFile}"
      echo -e "${tableHeader}" >> "${finalFile}"
      cat "${file}" >> "${finalFile}"
      echo -e '\n<a href="#toc">:top:</a>\n' >> "${finalFile}"
      rm "${file}"
    done
    echo -e "\n" >> "${finalFile}"
  done
}


main() {
  local raUser="$(readEnv rauser)"
  local raApiKey="$(readEnv raapikey)"
  [[ -z "${raUser}" || -z "${raApiKey}" ]] && return 1

  local inputFile
  local baseFilename
  local rawFile
  local finalFile
  local consoleList=()
  local sortedConsoleList=()
  local entryTypeList=(release revision wip demoted cancelled rescore icon badge)

  # quick'n'dirty workaround to create a Game Info Table
  if [[ "$1" == "--game-table" ]]; then
    local gameId="$2"
    local gameInfo
    local regexRawEntry='^(.+):::(.+):::(.+):::(.+):::(.+)$'
    # gameTitle:::consoleName:::gameIconUri:::gameGenre:::gameId

    [[ ${gameId} =~ ^[0-9]+$ ]] || return 1

    rawFile='/dev/null'
    typeRegex='.*'

    gameInfo="$(getRAGameInfo)"
    [[ -z "${gameInfo}" ]] && return 1

    gameInfo+=":::${gameId}"

    [[ $gameInfo =~ $regexRawEntry ]] || return 1
    gameTitle="${BASH_REMATCH[1]//|/\\|}"
    consoleName="${BASH_REMATCH[2]}"
    gameIconUri="${BASH_REMATCH[3]}"
    gameGenre="${BASH_REMATCH[4]}"
    gameId="${BASH_REMATCH[5]}"

    echo -e \
     '\n| Game | Console | Genre |' \
     '\n|------|---------|-------|' \
     "\n| <a class=\"gameicon-link\" href=\"https://retroachievements.org/game/${gameId}\" target=\"_blank\" rel=\"noopener\">" \
     "<img class=\"gameicon\" src=\"https://retroachievements.org${gameIconUri}\" alt=\"${gameTitle}\">" \
     "<span>${gameTitle}</span></a>" \
     "| ${consoleName}" \
     "| ${gameGenre} |"

    exit 0
  fi

  inputFile="$1"
  baseFilename="${inputFile%.*}"
  rawFile="${baseFilename}.raw"
  finalFile="${baseFilename}-final-article.md"

  echo "parsing \"${inputFile}\"... "
  createRawList "$1"
  echo DONE

  echo -n "separating by console... "
  separateByConsole
  echo DONE

  # sorting the console list alphabetically
  IFS=$'\n' sortedConsoleList=($(sort <<<"${consoleList[*]}"))
  unset IFS

  echo -n "creating the \"${finalFile}\"... "
  createFinalFile
  echo 'DONE!'
}


[[ "$0" == "${BASH_SOURCE[0]}" ]] && main "$@"
