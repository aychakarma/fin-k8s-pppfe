FROM openjdk:11
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8030
ENTRYPOINT ["java", "-jar", "/app.jar"]
