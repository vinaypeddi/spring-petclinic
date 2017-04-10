#!/bin/bash
docker rm -f tomcat-petclinic-container
docker run -d -p 9966:9966 tomcat-petclinic
