FROM openjdk:11
EXPOSE 4201
ADD target/foodboxspringapp.jar foodboxspringapp.jar
ENTRYPOINT ["java","-jar","/foodboxspringapp.jar"]
