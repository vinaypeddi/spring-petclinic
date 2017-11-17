#!/bin/bash
set -e

if [[ -e "petclinic.jar" ]]; then
    rm -v petclinic.jar
fi

cp -v target/petclinic*.jar ./petclinic.jar
docker build -t tomcat-petclinic .
