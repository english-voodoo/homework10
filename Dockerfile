FROM tomcat:9-alpine
RUN ["/bin/bash", "-c", "wget --user=jenkins --password=jenkins http://35.234.73.166:8081/repository/dz10-maven/com/boxfuse/samples/hello/1.0/hello-1.0.war"]
RUN service tomcat9 restart
EXPOSE 8080