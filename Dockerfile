FROM eclipse-temurin:22-jre

WORKDIR /app

COPY target/maven-docker-app-1.0.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
