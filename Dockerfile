FROM openjdk:8
EXPOSE 8080
#Use: Option 1
#ADD target/spring-boot-docker.jar spring-boot-docker.jar

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} spring-boot-docker.jar
ENTRYPOINT ["java","-jar","/spring-boot-docker.jar"]