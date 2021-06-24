FROM tomcat:9-alpine
WORKDIR /tmp
RUN cp /opt/build/workspace/dz10-build-pipe/target/hello-1.0.war $CATALINA_HOME/webapps/
EXPOSE 8080
