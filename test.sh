#!/bin/bash

EXPECTED_VERSION="0.1.1-alpha1"

CALCULATED_VERSION="$(get describe --prerelease --exclude-metadata --prerelease-pattern "alpha(p)")"

[ "${EXPECTED_VERSION}" = "${CALCULATED_VERSION}" ]

exit $?

