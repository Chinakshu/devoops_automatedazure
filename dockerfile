FROM openjdk:17-jdk-slim
COPY target/devops-demo.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
