#!/bin/bash

EXPECTED_VERSION="0.1.1-alpha1"

CALCULATED_VERSION="$(get describe --exclude-metadata --prerelease --prerelease-pattern "alpha(p)" --old-prerelease-pattern "dev(p)")"

[ "${EXPECTED_VERSION}" = "${CALCULATED_VERSION}" ]

exit $?

