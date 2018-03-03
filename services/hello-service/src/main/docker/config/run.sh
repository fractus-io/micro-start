#!/bin/sh

# LOG CONFIGURATION
#sed -i s/LOGSTASH_HOST/$LOGSTASH_HOST/g  /opt/config/logback.xml
#sed -i s/LOGGING_APPLICATION_NAME/$LOGGING_APPLICATION_NAME/g  /opt/config/logback.xml

cat /opt/config/logback.xml

# APPLICATION PROPERTIES
touch /opt/config/application.properties

# GLOBALS
echo logging.config=/opt/config/logback.xml >> /opt/config/application.properties

echo shell.ssh.port=2022 >> /opt/config/application.properties
echo server.port=8080 >> /opt/config/application.properties
echo management.port=8080 >> /opt/config/application.properties

# a service application default port
#echo server.port=$SERVER_PORT >> /opt/config/application.properties

# a Service Id (sid) is a unique (micro)service instance identificator 
# echo sid=$SID >> /opt/config/application.properties

#echo spring.profiles.active=$SPRING_PROFILES >> /opt/config/application.properties

cat /opt/config/application.properties

# start spring boot application
#exec /usr/bin/java $JVM_MAX_MEM $JVM_PARAMS  -jar /opt/*hello-service*.jar --spring.config.location=/opt/config/application.properties

exec /usr/bin/java -jar /opt/*hello-service*.jar 
