#!/bin/bash

# ./add.sh /path/to/file.jar groupId artifactId 1.2.3

dir=$(dirname $(readlink  -f ./add.sh))

#$dir/mvnw install:deploy-file -Dfile=$1 -DgroupId=$2 -DartifactId=$3 -Dversion=$4 -Dpackaging=jar -Durl=repo

$dir/mvnw org.apache.maven.plugins:maven-install-plugin:3.0.0-M1:install-file  -Dfile=$1 \
	-DgroupId=$2 \
	-DartifactId=$3 \
	-Dversion=$4 \
	-Dpackaging=jar \
	-DlocalRepositoryPath=$dir/repo
