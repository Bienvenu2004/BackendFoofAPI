# Étape 1 : Build
FROM maven:3.9.6-eclipse-temurin-21 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Étape 2 : Run
FROM openjdk:21
WORKDIR /app
COPY --from=build /app/target/*.jar backendFood.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "backendFood.jar"]
