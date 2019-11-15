#! /bin/bash

CURRENT_VERSION=`xmllint --xpath '/project/version/text()' pom.xml`

RELEASE_VERSION=`echo $CURRENT_VERSION | sed 's/\-.*//g'`
DEV_VERSION=`echo $CURRENT_VERSION | perl -pe 's/^((\d+\.)*)(\d+)(.*)$/$1.($3+1).$4/e'`

echo current version: $CURRENT_VERSION
echo release version: $RELEASE_VERSION
echo dev version: $DEV_VERSION

mvn -DdevelopmentVersion=$DEV_VERSION -DreleaseVersion=$RELEASE_VERSION jgitflow:release-start
mvn jgitflow:release-finish