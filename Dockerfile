FROM openjdk:11
COPY /var/jenkins_home/workspace/jk/target/spring-petclinic-2.5.0-SNAPSHOT.jar /spring-petclinic-2.4.2.jar
EXPOSE 8080
CMD ["java, "-jar", "spring-petclinic-2.4.2.jar"]
