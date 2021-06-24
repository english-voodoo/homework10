FROM tomcat:9-alpine
RUN wget -O /usr/local/tomcat/webapps/hello-1.0.war http://35.234.73.166:8081/repository/dz10-maven/com/boxfuse/samples/hello/1.0/hello-1.0.war
RUN service tomcat9 restart
EXPOSE 8080
