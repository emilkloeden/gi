#! /bin/bash
titleCase=${1^}
if curl -s -S -f -o .gitignore "https://raw.githubusercontent.com/github/gitignore/main/$1.gitignore" 2>/dev/null; then
    :
elif curl -s -S -f -o .gitignore "https://raw.githubusercontent.com/github/gitignore/main/$titleCase.gitignore" 2>/dev/null; then
    :
else
    echo "Unable to find .gitignore for '$1' or '$titleCase'." >&2
fi