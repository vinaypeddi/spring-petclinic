#!/bin/bash
set -e
echo "--- removing any old containers created from this base image ... "
IMAGE=tomcat-petclinic
containers=`docker ps -aq -f "ancestor=$IMAGE"`
for i in $containers; do
  docker rm -f $i
done
echo "--- starting container for tomcat-petclinic ..."

docker volume rm -f petclinic-data

docker volume create petclinic-data
docker run --mount source=petclinic-data,target=/app -d -p 8080:8080 --name tomcat-petclinic-container tomcat-petclinic

