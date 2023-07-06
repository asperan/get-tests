#!/bin/bash

EXPECTED_VERSION="0.1.1"

CALCULATED_VERSION="$(get describe --exclude-metadata --patch-trigger="type == 'chore' && scope == 'core-deps'")"

[ "${EXPECTED_VERSION}" = "${CALCULATED_VERSION}" ]

exit $?

