FROM alpine/git
WORKDIR /app
RUN git clone https://github.com/DariusX/springboot-simple-docker.git
FROM maven:3.5-jdk-8-alpine
WORKDIR /app
COPY --from=0 /app/springboot-simple-docker /app 
RUN mvn install 
FROM openjdk:8-jre-alpine
WORKDIR /app
COPY --from=1 /root/.m2/repository/com/xby2/team1/springboot-simple/1.0-SNAPSHOT/springboot-simple-1.0-SNAPSHOT.jar /app 
CMD ["java -jar springboot-simple-docker-1.0-SNAPSHOT.jar"] 
