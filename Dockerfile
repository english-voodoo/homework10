FROM tomcat:9.0.46-jdk16-openjdk-slim-buster as tomcat:prod
RUN ls -la /usr/local/tomcat/webapps
RUN apt-get update && apt-get install -y curl wget
RUN /usr/bin/curl --user=admin --password=admin -O /usr/local/tomcat/webapps/hello-1.0.war http://35.234.73.166:8081/repository/dz10-maven/com/boxfuse/samples/hello/1.0/hello-1.0.war
