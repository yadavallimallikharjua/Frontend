FROM openjdk:11
COPY workspace/target/spring-petclinic-2.5.0-SNAPSHOT.jar /spring-petclinic-2.5.0.jar
EXPOSE 8080
CMD ["java, "-jar", "spring-petclinic-2.5.0.jar"]
