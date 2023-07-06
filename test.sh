#!/bin/bash

EXPECTED_VERSION="0.1.1-dev1"

CALCULATED_VERSION="$(get describe --prerelease --exclude-metadata)"

[ "${EXPECTED_VERSION}" = "${CALCULATED_VERSION}" ]

exit $?

