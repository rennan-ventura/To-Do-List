# Use a imagem base do OpenJDK para Java 11
FROM openjdk:17-jdk-slim

# Diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie o arquivo JAR do seu aplicativo (assumindo que ele está no diretório target) para o contêiner
COPY ./target/todolist-1.0.0.jar /app/app.jar

# Exponha a porta 8080
EXPOSE 8080

# Comando para executar o aplicativo quando o contêiner for iniciado
CMD ["java", "-jar", "app.jar"]