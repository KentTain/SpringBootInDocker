FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG version
COPY /target/springbootindocker-${version}.jar app.jar
EXPOSE 9090
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]