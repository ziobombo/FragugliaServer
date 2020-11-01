#! /bin/bash

CURRENT_VERSION=`xmllint --xpath '/project/version/text()' pom.xml`

RELEASE_VERSION=`echo $CURRENT_VERSION | sed 's/\-.*//g'`
DEV_VERSION=`echo $CURRENT_VERSION | perl -pe 's/^((\d+\.)*)(\d+)(.*)$/$1.($3+1).$4/e'`

#echo current version: $CURRENT_VERSION
#echo release version: $RELEASE_VERSION
#echo dev version: $DEV_VERSION

curl -v -i -X POST -H "Content-Type:application/json" -u ziobombo:76b9cdc1b045058e5a6bcd9c438e611eb02eb368 https://api.github.com/repos/ziobombo/FragugliaServer/releases -d '{"tag_name":"$RELEASE_VERSION","target_commitish": "development","name": "$RELEASE_VERSION","body": "","draft": false,"prerelease": false}'

#mvn -DdevelopmentVersion=$DEV_VERSION -DreleaseVersion=$RELEASE_VERSION jgitflow:release-start
#mvn jgitflow:release-finish