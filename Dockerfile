# Use the official OpenJDK 17 image from Docker Hub
FROM openjdk:17

# Set the working directory inside the container
WORKDIR /app

# Expose port 8082 to the outside world
EXPOSE 80

# Download the JAR file from Nexus repository into the container
RUN wget http://192.168.50.4:8081/repository/maven-releases/tn/esprit/eventsProject/1.0/eventsProject-1.0.jar -O /app/eventsProject-1.0.jar

# Set the entry point for the Docker container (running your Java application)
ENTRYPOINT ["java", "-jar", "/app/eventsProject-1.0.jar"]

# Set the default command to run when the container starts
CMD ["java", "-jar", "/app/eventsProject-1.0.jar"]