FROM openjdk:11
COPY /var/jenkins_home/workspace/declarative@2/target/spring-petclinic-2.5.0-SNAPSHOT.jar /spring-petclinic-2.5.0.jar
EXPOSE 8080
CMD ["java, "-jar", "spring-petclinic-2.5.0.jar"]
