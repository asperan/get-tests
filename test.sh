#!/bin/bash

EXPTECTED_COMMIT_MESSAGE="feat: add a new text file"

touch new_file.txt

git add new_file.txt

get commit -t 'feat' -S '' -s 'add a new text file' -m '' --no-breaking -q

LAST_COMMIT_MESSAGE="$(git log --format=%s | head -n 1)"

[ "$LAST_COMMIT_MESSAGE" = "${EXPTECTED_COMMIT_MESSAGE}" ]

exit $?
