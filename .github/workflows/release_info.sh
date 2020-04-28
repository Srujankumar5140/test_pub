#!/bin/bash
set -euo pipefail

# Only look to the latest release to determine the previous tag -- this allows us to skip unsupported tag formats (like `version-1.0.0`)
export CHANGELOG=`git log v${{ steps.release_info.outputs.RELEASE_VERSION }}...${{ steps.release_info.outputs.PREVIOUS_TAG } --oneline`
echo "CHANGELOG=$CHANGELOG"

#Format the changelog so it's markdown compatible
CHANGELOG="${CHANGELOG//$'%'/%25}"
CHANGELOG="${CHANGELOG//$'\n'/%0A}"
CHANGELOG="${CHANGELOG//$'\r'/%0D}"
