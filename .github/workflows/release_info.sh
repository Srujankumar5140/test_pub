#!/bin/bash
set -euo pipefail

# Only look to the latest release to determine the previous tag -- this allows us to skip unsupported tag formats (like `version-1.0.0`)
export CHANGELOG=`git log $PREVIOUS_TAG...$NEW_TAG --oneline`
#export CHANGELOG=`git log v0.9.254...v0.9.253 --oneline`
echo "CHANGELOG=$CHANGELOG"

#Format the changelog so it's markdown compatible
CHANGELOG="${CHANGELOG//$'%'/%25}"
CHANGELOG="${CHANGELOG//$'\n'/%0A}"
CHANGELOG="${CHANGELOG//$'\r'/%0D}"
