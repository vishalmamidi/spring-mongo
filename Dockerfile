FROM openjdk:17-jdk-alpine

EXPOSE 8080

WORKDIR /app

COPY /build/libs/spring-mongo-0.0.1-SNAPSHOT.jar /app/spring-mongo-0.0.1-SNAPSHOT.jar

ENTRYPOINT ["java", "-jar", "./spring-mongo-0.0.1-SNAPSHOT.jar"]
