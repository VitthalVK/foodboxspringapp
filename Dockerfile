FROM openjdk:8
EXPOSE 4201
ADD target/foodbox-0.0.1-SNAPSHOT.jar foodbox-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/foodbox-0.0.1-SNAPSHOT.jar"]