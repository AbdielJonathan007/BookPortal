# Build stage
FROM maven:3.9-amazoncorretto-17 AS build
COPY src /usr/src/app/src
COPY pom.xml /usr/src/app
RUN mvn -f /usr/src/app/pom.xml clean package -DskipTests

# Production stage
FROM eclipse-temurin:18-jre
COPY --from=build /usr/src/app/target/BookPortal-0.0.1-SNAPSHOT.jar /usr/app/BookPortal-0.0.1-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/usr/app/BookPortal-0.0.1-SNAPSHOT.jar"]

