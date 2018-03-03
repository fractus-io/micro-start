#pull base image
FROM openjdk:8-jdk-alpine

#maintainer 
MAINTAINER info@fractus.io

#expose port 8080
EXPOSE 8080

#copy hello service to docker image
COPY hello-service-0.0.1-SNAPSHOT.jar /opt/hello-service-0.0.1-SNAPSHOT.jar

# copy log configuration file from config folder to /opt/config/
COPY config/logback.xml /opt/logback.xml

# copy run.sh file from config folder to /opt/
COPY config/run.sh /opt/run.sh

# give exe rights to the run.sh
RUN /usr/bin/chmod 755 /opt/run.sh

# when docker image is started run.sh will be executed
ENTRYPOINT ["/opt/run.sh"]

