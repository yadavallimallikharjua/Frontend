FROM openjdk:11
RUN ls /var/
COPY /var/jenkins_home/workspace/spring-petclinic/target/spring-petclinic-2.5.0-SNAPSHOT.jar /spring-petclinic-2.5.0.jar
EXPOSE 8080
CMD ["java, "-jar", "spring-petclinic-2.5.0.jar"]
