#!/bin/bash

if git branch | grep "${TEST_BRANCH}" ; then
  git checkout "${TEST_BRANCH}" &> /dev/null
else
  echo "Branch '${TEST_BRANCH}' does not exists. Checking out 'main'" >&2
  git checkout 'main' &> /dev/null
fi

./test.sh
