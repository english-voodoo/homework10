FROM tomcat:9.0.46-jdk16-openjdk-slim-buster
RUN ls -la /usr/local/tomcat/webapps
RUN /usr/bin/curl --user=jenkins --password=jenkins -O /usr/local/tomcat/webapps/hello-1.0.war http://35.234.73.166:8081/repository/dz10-maven/com/boxfuse/samples/hello/1.0/hello-1.0.war
RUN service tomcat9 restart
EXPOSE 8080