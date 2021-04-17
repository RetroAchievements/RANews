#!/usr/bin/env bash

readonly SITE_DIR='../_site'

listArticles() {
  find "$searchDir" -type f -name play-this-set.html
}

listArticleHeadings() {
  sed \
    '/<li><a href="#/!d; s/.*"\([^"]\+\)".*/\1/' \
    "${file}"
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

  articleFiles=( $(listArticles) )

  for file in "${articleFiles[@]}"; do
    url="${file//$searchDir/$urlPrefix}"

    anchorLinks=( $(listArticleHeadings) )

    for anchor in "${anchorLinks[@]}"; do
      [[ "${anchor}" == '#intro' ]] && continue
      articleUrl="${url}${anchor}"
      echo '====='
      echo "${anchor}"
      echoForumPostText
    done
  done
}


main() {
  local searchDir="${1:-$SITE_DIR}"
  local urls
  local url

  if [[ ! -d "$searchDir" ]]; then
    echo "ERRO: no such directory: '$searchDir'" >&2
    exit 1
  fi

  listArticles
}

main $@

