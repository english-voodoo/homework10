FROM tomcat:9.0.46-jdk16-openjdk-slim-buster as tomcatprod
RUN ls -la /usr/local/tomcat/webapps
RUN apt-get update && apt-get install -y curl wget
RUN /usr/bin/curl -u 'admin:admin' -O /usr/local/tomcat/webapps/hello-1.0.war http://34.141.63.36:8081/repository/dz10-maven/com/boxfuse/samples/hello/1.0/hello-1.0.war
