#!/bin/bash
set -e
docker build -t db-schema db-schema/
cp -v ../../target/spring-petclinic*.jar ./petclinic-jar/petclinic.jar
docker-compose up -d
