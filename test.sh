#!/bin/bash

EXPECTED_VERSION="0.1.1"

CALCULATED_VERSION="$(get describe --exclude-metadata)"

[ "${CALCULATED_VERSION}" = "${EXPECTED_VERSION}" ]

exit $?

