FROM openjdk:17-jdk-slim
COPY target/eureka-discovery-server-*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
