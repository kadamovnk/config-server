# Dockerfile approach when moving to production, now we are using direct image
FROM eclipse-temurin:21-jdk
WORKDIR /app
COPY target/config-server-*.jar config-server.jar
EXPOSE 8888
ENTRYPOINT ["java", "-jar", "config-server.jar"]