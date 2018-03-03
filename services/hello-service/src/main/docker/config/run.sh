#!/bin/sh

# LOG CONFIGURATION
#sed -i s/LOGSTASH_HOST/$LOGSTASH_HOST/g  /opt/logback.xml
#sed -i s/LOGGING_APPLICATION_NAME/$LOGGING_APPLICATION_NAME/g  /opt/logback.xml

cat /opt/logback.xml

# APPLICATION PROPERTIES
touch /opt/application.properties

# GLOBALS
echo logging.config=/opt/logback.xml >> /opt/application.properties

echo shell.ssh.port=2022 >> /opt/application.properties
echo server.port=8080 >> /opt/application.properties
echo management.port=8080 >> /opt/application.properties

# a service application default port
#echo server.port=$SERVER_PORT >> /opt/application.properties

# a Service Id (sid) is a unique (micro)service instance identificator 
# echo sid=$SID >> /opt/application.properties

#echo spring.profiles.active=$SPRING_PROFILES >> /opt/application.properties

cat /opt/application.properties

# start spring boot application
#exec /usr/bin/java $JVM_MAX_MEM $JVM_PARAMS  -jar /opt/*hello-service*.jar --spring.config.location=/opt/application.properties

exec /usr/bin/java -jar /opt/*hello-service*.jar 
