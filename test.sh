#!/bin/bash

EXPECTED_VERSION="1.0.0"

CALCULATED_VERSION="$(get describe --exclude-metadata --major-trigger "(type == 'refactor' && scope == 'API') || is_breaking")"

[ "${EXPECTED_VERSION}" = "${CALCULATED_VERSION}" ]

exit $?

