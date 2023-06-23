#!/bin/bash

set -euo pipefail
IFS=$'\n\t'
set -vx

mkdir /repository
cd /repository

get init

[ "$(git log --oneline | wc -l)" -eq "1" ]

exit $?

