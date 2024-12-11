# Use the official OpenJDK 17 image from Docker Hub
FROM openjdk:17

# Set the working directory inside the container
WORKDIR /app

# Expose port 8082 to the outside world
EXPOSE 80

# Copy the Maven project JAR file into the container
COPY eventsProject-1.0.0.jar /app/eventsProject-1.0.jar

# Set the entry point for the Docker container (running your Java application)
ENTRYPOINT ["java", "-jar", "/app/eventsProject-1.0.jar"]

# Set the default command to run when the container starts
CMD ["java", "-jar", "/app/eventsProject-1.0.jar"]
