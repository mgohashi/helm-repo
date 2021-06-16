#!/bin/sh

USER=mohashi
PWD=mo123
REPO=https://nexus3-test-app.apps.acm.stp.latam/service/rest/v1/components?repository=helm

for file in `ls *.tgz`; do
    curl -vk -F file=@$file -u $USER:$PWD $REPO
done
