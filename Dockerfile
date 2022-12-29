FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY target/spring-ms-config-server-0.0.1-SNAPSHOT.jar spring-ms-config-server.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/spring-ms-config-server.jar"]