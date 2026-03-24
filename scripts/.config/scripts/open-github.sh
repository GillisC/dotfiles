#!/usr/bin/env bash

cd "$(tmux display-message -p -F "#{pane_current_path}")" || exit 1
url=$(git remote get-url origin)

echo "$url"

if [[ $url == *github.com* ]]; then
    if [[ $url == *git@* ]]; then
        url="${url#git@}"
        url="${url/:/\/}"
        url="https://$url"
    fi
    xdg-open "$url"
else
    echo "Repository not found on GitHub"
fi
