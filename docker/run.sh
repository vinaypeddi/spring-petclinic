#!/bin/bash
set -e
echo "--- removing any old containers created from this base image ... "
IMAGE=tomcat-petclinic
containers=`docker ps -aq -f "ancestor=$IMAGE"`
for i in $containers; do
  docker rm -f $i
done
echo "--- starting container for tomcat-petclinic ..."
docker run -d -p 8080:8080 --name tomcat-petclinic-container tomcat-petclinic
ip=`docker-machine ip $DOCKER_MACHINE_NAME`
echo "*********************************"
echo "Petclinic is running at:"
echo "http://$ip:8080/petclinic"
echo "*********************************"
