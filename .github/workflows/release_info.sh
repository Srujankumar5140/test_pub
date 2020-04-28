#!/bin/bash
set -euo pipefail

# Only look to the latest release to determine the previous tag -- this allows us to skip unsupported tag formats (like `version-1.0.0`)
#export CHANGELOG=`git log $PREVIOUS_TAG...$NEW_TAG --oneline`
export CHANGELOG=`git log  HEAD...$PREVIOUS_TAG --oneline`
