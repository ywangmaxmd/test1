#!/bin/sh

env="$1"

echo "env: $env"

mvn clean install

version=`mvn org.apache.maven.plugins:maven-help-plugin:2.1.1:evaluate -Dexpression=project.version | grep -v '\[' | grep -v 'Downloading:'`


cp target/hello-world-"$version".jar  /home/maxmdsys/tmp/hello-world-"$version"-"$env".jar
#cp target/hello-world-"$version".jar  /home/maxmdsys/tmp/.


