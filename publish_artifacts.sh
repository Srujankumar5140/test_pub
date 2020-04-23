#!/bin/bash
set -euo pipefail
project_version=`cat pom.xml | grep "<version>.*</version>" | head -1 |awk -F'[><]' '{print $3}'`
echo ::set-env name=RELEASE_VERSION::$(echo $project_version)
artifactory_version=$project_version.$GITHUB_RUN_NUMBER
echo ::set-env name=IMAGE_VERSION::$(echo $artifactory_version)
