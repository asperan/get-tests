#!/bin/bash

EXPECTED_VERSION="0.2.0"

CALCULATED_VERSION="$(get describe --exclude-metadata --minor-trigger "type == 'build'")"

[ "${EXPECTED_VERSION}" = "${CALCULATED_VERSION}" ]

exit $?

