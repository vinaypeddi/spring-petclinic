# JDK application 
FROM openjdk:8u131-jdk-alpine

# Labels allow for metadata and visibility
LABEL com.petclinic.maintainer="Vish"
LABEL com.petclinic.description="Petclinic Application JAR"

VOLUME /app

# Application and configuration
ADD petclinic.jar /app/petclinic.jar
ADD application.properties /app/application.properties
ENV JAVA_OPTS=""

# Spring app needs to take local application.properties
ENV SPRING_OPTS="--spring.config.location=/app/application.properties"
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -jar /app/petclinic.jar $SPRING_OPTS" ]
