FROM openjdk:11
ADD target/demo-spring-boot-docker.jar demo-spring-boot-docker.jar
EXPOSE 8085
ENTRYPOINT ["java", "-jar", "demo-spring-boot-docker.jar"]


