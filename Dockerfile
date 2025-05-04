FROM openjdk:21
EXPOSE 8080
ADD target/backendFood.jar backendFood.jar
ENTRYPOINT ["java", "-jar", "/backendFood.jar"]