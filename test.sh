#!/bin/bash

EXPECTED_VERSION="0.1.0-dev1"

CALCULATED_VERSION="$(get describe --prerelease --exclude-metadata)"

[ "${EXPECTED_VERSION}" = "${CALCULATED_VERSION}" ]

exit $?
