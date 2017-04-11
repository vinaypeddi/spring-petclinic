# Using tomcat8 and jre7 base image.
FROM tomcat:8.0

# tomcat-users XML with manager account configuration.
COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml

# Petclinic WAR needs to be present in this dir.
COPY petclinic.war /usr/local/tomcat/webapps/petclinic.war

# default server.xml forwards all requests on 8080 to the WAR.
EXPOSE 8080
