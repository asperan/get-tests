#!/bin/bash

get changelog > CHANGELOG

diff CHANGELOG EXPECTED_CHANGELOG

result=$?

rm CHANGELOG

exit $result

