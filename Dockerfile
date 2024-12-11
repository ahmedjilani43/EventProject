# Use the official OpenJDK 17 JDK image with Alpine Linux as the base image
FROM java-17-openjdk-amd64

# Set the working directory inside the container
WORKDIR /app

# Expose port 8082 to the outside world
EXPOSE 80

# Download the JAR file from Nexus repository into the container
# Replace the Nexus URL and artifact coordinates with your actual values
RUN wget http://http://192.168.50.4:8081/repository/maven-releases/tn/esprit/eventsProject/1.0/eventsProject-1.0.jar

# Specify the command to run your Spring Boot application
ENTRYPOINT ["java", "-jar", "eventsProject-1.0.jar"]
