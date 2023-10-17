FROM openjdk:17-jdk-slim

EXPOSE 8080

COPY target/todolist-1.0.0.jar app.jar

ENTRYPOINT [ "java", "-jar", "app.jar"]