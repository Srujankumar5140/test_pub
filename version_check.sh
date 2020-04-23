#!/bin/bash
set -euo pipefail
sudo curl -sSL https://d2eqe25y35e72h.cloudfront.net | HYS_VERSION=0.9.5.4  bash
#if [ "$(hyscale --version| grep  Version)" == *"$project_version"* ];
if grep -qw "${{ steps.publish_artifacts.outputs.RELEASE_VERSION }}" <<< "$(hyscale --version| grep  Version)" ;

then 
	echo "successful"
else
	echo "Bye"
fi
