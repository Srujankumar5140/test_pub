#!/bin/bash
set -euo pipefail
sudo sudo usermod -a -G docker runner
curl -sSL https://d2eqe25y35e72h.cloudfront.net | HYS_VERSION=0.9.5.4  bash
#if [ "$(hyscale --version| grep  Version)" == *"$project_version"* ];
echo ${{ steps.release_info.outputs.RELEASE_VERSION }}
if grep -qw "${{ steps.release_info.RELEASE_VERSION }}" <<< "$(hyscale --version| grep  Version)" ;

then 
	echo "successful"
else
	echo "Bye"
fi
