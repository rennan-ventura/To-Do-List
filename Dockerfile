# Use uma imagem base que contenha o Java (por exemplo, openjdk)
FROM maven:3.8.4-jdk-17

# Defina o diretório de trabalho
WORKDIR /app

# Copie o arquivo pom.xml e o arquivo src para o contêiner
COPY . .
RUN apt-get update
RUN apt-get install maven -y
# Execute o comando Maven para compilar e empacotar o aplicativo
RUN mvn clean build

# Exponha a porta em que o aplicativo Java será executado (substitua pela porta correta)
EXPOSE 8080

# Comando para iniciar a aplicação Java (substitua pelo comando correto)
CMD ["java", "-jar", "target/todolist-1.0.0.jar"]