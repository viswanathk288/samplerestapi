# Use a lightweight base image with the Java Runtime Environment (JRE)
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from your host machine into the container
# Replace 'your-app-name.jar' with your actual JAR file name
COPY target/*.jar app.jar

# Expose the port your application runs on (default is 8080)
EXPOSE 1111:2222

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
