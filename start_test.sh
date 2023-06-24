#!/bin/bash

# Try to checkout the test branch, if it does not exist (even a remote), checkout the main branch as it gives an error.
git checkout "${TEST_BRANCH}" &>/dev/null || git checkout 'main' &>/dev/null

./test.sh
