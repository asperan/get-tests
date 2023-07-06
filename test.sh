#!/bin/bash

EXPECTED_VERSION="0.2.0"

CALCULATED_VERSION="$(get describe --exclude-metadata)"

[ "${CALCULATED_VERSION}" = "${EXPECTED_VERSION}" ]

exit $?

