#!/bin/bash

EXPECTED_VERSION="0.2.0-dev1"

CALCULATED_VERSION="$(get describe --exclude-metadata --prerelease)"

[ "${EXPECTED_VERSION}" = "${CALCULATED_VERSION}" ]

exit $?

