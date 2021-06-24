FROM maven:3.8.1-openjdk-11-slim
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*
WORKDIR /tmp
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /tmp/boxfuse-sample-java-war-hello
RUN mvn validate && mvn package && mkdir /tmp/webapps && cp /tmp/boxfuse-sample-java-war-hello/target/hello-1.0.war /tmp/webapps


FROM tomcat:9-alpine
WORKDIR /tmp
