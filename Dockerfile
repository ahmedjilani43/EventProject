# Use the official OpenJDK 17 image from Docker Hub
FROM openjdk:17

# Set the working directory inside the container
WORKDIR /app

# Copy the Maven project JAR file into the container
COPY target/eventsProject-1.0.0.jar /app/eventsProject-1.0.0.jar

# Expose the port your application will run on (e.g., 8082)
EXPOSE 8082

# Set the entry point for the Docker container (running your Java application)
ENTRYPOINT ["java", "-jar", "/app/eventsProject-1.0.0.jar"]

# Set the default command to run when the container starts
CMD ["java", "-jar", "/app/eventsProject-1.0.0.jar"]
