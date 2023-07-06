#!/bin/bash

EXPECTED_VERSION="0.1.1-dev2"

CALCULATED_VERSION="$(get describe --exclude-metadata --prerelease)"

[ "${EXPECTED_VERSION}" = "${CALCULATED_VERSION}" ]

exit $?

