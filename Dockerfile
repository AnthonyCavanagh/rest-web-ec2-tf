FROM adoptopenjdk:16.0.1_9-jdk-hotspot-focal

EXPOSE 8080
ADD target/RestWeb.jar RestWeb.jar
ENTRYPOINT ["java", "-jar", "/RestWeb.jar"]