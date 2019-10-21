#!/bin/bash

git clone https://github.com/apache/incubator-openwhisk-devtools
cd incubator-openwhisk-devtools/java-action-archetype/
mvn clean install

mvn archetype:generate \
  -DarchetypeGroupId=org.apache.openwhisk.java \
  -DarchetypeArtifactId=java-action-archetype \
  -DarchetypeVersion=1.0-SNAPSHOT \
  -DgroupId=org.sobkowiak.demos.openwhisk \
  -DartifactId=hello-msgaction \
  -Dversion=1.0-SNAPSHOT \
  -DinteractiveMode=false
