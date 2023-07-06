#!/bin/bash

EXPECTED_VERSION="1.0.0"

CALCULATED_VERSION="$(get describe --exclude-metadata)"

[ "${CALCULATED_VERSION}" = "${EXPECTED_VERSION}" ]

exit $?

