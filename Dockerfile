FROM tomcat:9-alpine
RUN cp target/hello-1.0.war $CATALINA_HOME/webapps/
EXPOSE 8080
