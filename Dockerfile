FROM openjdk:11
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
RUN chmod +x /nfs_share/mvnw
EXPOSE 8020
ENTRYPOINT ["java", "-jar", "/app.jar"]
