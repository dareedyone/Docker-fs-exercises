FROM openjdk:8
COPY spring-example-project-master /usr/src/myapp
WORKDIR /usr/src/myapp
RUN ./mvnw package
EXPOSE 8080
CMD java -jar ./target/docker-example-1.1.3.jar
