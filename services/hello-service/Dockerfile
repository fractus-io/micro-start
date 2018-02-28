#pull base image
FROM openjdk:8-jdk-alpine

#maintainer 
MAINTAINER info@fractus.io

#expose port 8080
EXPOSE 8080

#default command
CMD java -jar /data/hello-service-0.0.1-SNAPSHOT.jar

#copy hello service to docker image
ADD ./target/hello-world-0.1.0.jar /data/hello-world-0.1.0.jar