FROM openjdk:8-jre-alpine
WORKDIR /app
COPY target/springboot-simple-docker-1.0-SNAPSHOT.jar /app 
EXPOSE 8080
CMD ["java","-jar", "springboot-simple-docker-1.0-SNAPSHOT.jar"] 