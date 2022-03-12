# Build stage
FROM maven:3.6.0-jdk-11-slim AS build
COPY pom.xml /app/
COPY src /app/src
RUN mvn -f /app/pom.xml clean package

# Run stage
FROM openjdk:8-jdk-alpine # Use your target JDK here !
COPY --from=build /app/target/Cloud-Sample-Application.jar /app/Cloud-Sample-Application.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app/Cloud-Sample-Application.jar"]

#FROM openjdk:11
#ADD target/demo-spring-boot-docker.jar demo-spring-boot-docker.jar
#EXPOSE 8085
#ENTRYPOINT ["java", "-jar", "demo-spring-boot-docker.jar"]

