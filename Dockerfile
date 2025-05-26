# Use a lightweight JDK base image
FROM eclipse-temurin:17-jdk-alpine

# Install curl (optional, useful for debugging or health checks)
RUN apk add --no-cache curl

# Define a volume for temporary files used by the application
VOLUME /tmp

# Expose the application's port (default Spring Boot port)
EXPOSE 8080

# Add the built Spring Boot JAR file into the image
ADD target/AWS-Deploy.jar AWS-Deploy.jar

# Set the default command to run the Spring Boot application
ENTRYPOINT ["java", "-jar", "/AWS-Deploy.jar"]