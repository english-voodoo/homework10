FROM tomcat:9-alpine
RUN $CATALINA_HOME/bin/shutdown.sh && \
    curl -o $CATALINA_HOME/webapps/hello-1.0.war http://35.234.73.166:8081/repository/dz10-maven/com/boxfuse/samples/hello/1.0/hello-1.0.war && \
    $CATALINA_HOME/bin/startup.sh
EXPOSE 8080
