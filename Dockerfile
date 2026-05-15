# Usa a imagem oficial do Java (Eclipse Temurin) versão 21 em Alpine (leve)
# https://hub.docker.com/_/eclipse-temurin
FROM maven:3.9.6-eclipse-temurin-21

WORKDIR /app

COPY . .

RUN chmod +x mvnw && ./mvnw package -DskipTests

EXPOSE 8080

CMD ["java", "-jar", "target/quarkus-app/quarkus-run.jar"]