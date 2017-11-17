# JDK application 
FROM openjdk:8u131-jdk-alpine

# Labels allow for metadata and visibility
LABEL com.poc.maintainer="Vish"
LABEL com.poc.description="Petclinic Application JAR"

# Mounting app dir for persistence
VOLUME /app

# Application and configuration
ADD petclinic.jar /app/petclinic.jar
ADD application.properties /app/application.properties
ENV JAVA_OPTS=""

# Spring app needs to take local application.properties
ENV SPRING_OPTS="--spring.config.location=/app/application.properties"
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -jar /app/petclinic.jar $SPRING_OPTS" ]


