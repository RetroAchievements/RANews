#!/usr/bin/env bash

readonly SITE_DIR='../_site'

listArticlesFiles() {
  echo "Scanning \"Play This Set\" articles in '${searchDir}'" >&2
  find "$searchDir" -type f -name play-this-set.html | sort
}

# TODO: this should be done with xmlstarlet, not sed
listArticleHeadings() {
  sed \
    '/<li><a href="#/!d; s/.*"\([^"]\+\)".*/\1/' \
    "${file}"
}

# TODO: this should be done with xmlstarlet, not sed
getGameName() {
  grep "<li><a href=\"${anchor}" ${file}\
  | sed "s/.*\"[^\"]\+\">\([^<]\+\)<.*/\1/"
}


echoForumPostText() {
  echo "
An article about this game was published in the \"Play This Set\" segment of RANews. [url=${articleUrl}]Check it out![/url]

If you want to write a couple of paragraphs advertising an achievement set you enjoyed playing/creating, send your text to [user=RAdmin].
"
}


listArticles() {
  local articleFiles
  local file
  local anchorLinks
  local anchor
  local urlPrefix='https://news.retroachievements.org'
  local url
  local articleUrl
  local gameName

  articleFiles=( $(listArticlesFiles) )

  for file in "${articleFiles[@]}"; do
    url="${file//$searchDir/$urlPrefix}"

    echo -e "\n\n## $(grep -Eo -m 1 '[0-9]{4}-[01][0-9]' "${file}")\n"

    anchorLinks=( $(listArticleHeadings) )

    for anchor in "${anchorLinks[@]}"; do
      [[ "${anchor}" == '#intro' ]] && continue
      articleUrl="${url}${anchor}"
      #echo '====='
      #echo "${anchor}"
      #echoForumPostText
      gameName="$(getGameName)"
      echo "- [${gameName}]($articleUrl)"
    done
  done
}


main() {
  local searchDir="${1:-$SITE_DIR}"

  if [[ ! -d "$searchDir" ]]; then
    echo "ERRO: no such directory: '$searchDir'" >&2
    exit 1
  fi

  listArticles
}

main $@

