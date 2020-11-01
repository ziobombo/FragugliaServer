#! /bin/bash

CURRENT_VERSION=`xmllint --xpath '/project/version/text()' pom.xml`

RELEASE_VERSION=`echo $CURRENT_VERSION | sed 's/\-.*//g'`
DEV_VERSION=`echo $CURRENT_VERSION | perl -pe 's/^((\d+\.)*)(\d+)(.*)$/$1.($3+1).$4/e'`

#echo current version: $CURRENT_VERSION
#echo release version: $RELEASE_VERSION
#echo dev version: $DEV_VERSION

curl \
  -X POST \
  -H "Accept: application/vnd.github.v3+json" \
  -u "ziobombo:d2ddc65d1ae6dd2d4c43b0082c540200897c4f52" \
  https://api.github.com/repos/ziobombo/FragugliaServer/releases \
  -d '{"tag_name":"'$RELEASE_VERSION'","target_commitish": "development","name": "'$RELEASE_VERSION'","body": "","draft": false,"prerelease": false}'

#mvn -DdevelopmentVersion=$DEV_VERSION -DreleaseVersion=$RELEASE_VERSION jgitflow:release-start
#mvn jgitflow:release-finish