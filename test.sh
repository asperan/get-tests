#!/bin/bash

DEFAULT_FIRST_VERSION="0.1.0"

DESCRIBED_VERSION="$(get describe --exclude-metadata)"

test "${DESCRIBED_VERSION}" = "${DEFAULT_FIRST_VERSION}"

exit $?
