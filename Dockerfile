FROM openjdk:17-jdk-slim

# Define build argument to accept the actual JAR file name (passed in build step)
ARG JAR_FILE=target/eureka-discovery-server-0.0.1-SNAPSHOT.jar

# Copy the JAR into the image
COPY ${JAR_FILE} app.jar

# Run the app
ENTRYPOINT ["java", "-jar", "/app.jar"]
