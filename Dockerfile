FROM openjdk:11
COPY target/spring-petclinic-2.5.0-SNAPSHOT.jar /spring-petclinic-2.5.0-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT /bin/bash
CMD ["java, "-jar", "spring-petclinic-2.5.0-SNAPSHOT.jar"]
