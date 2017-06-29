#!/bin/bash
set -e

if [[ -e "petclinic.war" ]]; then
    rm -v petclinic.war
fi

cp -v target/petclinic.war ./petclinic.war
docker build -t tomcat-petclinic .
