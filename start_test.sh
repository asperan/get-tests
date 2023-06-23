#!/bin/bash

git branch | grep "${TEST_BRANCH}" &>/dev/null

if [ "$?" -eq "0" ] ; then
  git checkout "${TEST_BRANCH}" &> /dev/null
else
  echo "Branch '${TEST_BRANCH}' does not exists. Checking out 'main'" >&2
  git checkout 'main' &> /dev/null
fi

./test.sh

