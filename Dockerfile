# Use the official OpenJDK 17 JDK image with Alpine Linux as the base image
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Expose port 8082 to the outside world
EXPOSE 8082

# Add the JAR file from the target directory into the container
ADD target/eventsProject-1.0.0.jar eventsProject-1.0.0.jar

# Specify the command to run your Spring Boot application
ENTRYPOINT ["java", "-jar", "eventsProject-1.0.0.jar"]
