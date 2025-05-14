FROM openjdk:17-jdk-slim
WORKDIR /app

# 4. Argument for the JAR file:
# This argument will be used to specify the path to the JAR file.
# The Jenkins pipeline will pass the actual value for this argument during the 'docker build' command.
# The default value 'target/*.jar' is a common pattern for Maven-built Spring Boot JARs.
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
