FROM eclipse-temurin:17
# IT will download 

COPY target/demo-app-docker.jar  /usr/app/ 
# how to know this is my jar file name that's why in pom.xml under build i am giving 
# this demo-app-docker (<finalName>demo-app-docker</finalName>)
 
# COPY - this is the file path(/usr/app) in the docker container , if this path is not
# there copy command will create this path(/usr/app/) & it will copy from demo-app-docker.jar
# to /usr/app/
WORKDIR /usr/app/
# workdir - it wil point to this path(/usr/app/)

EXPOSE 8080 
# expose 8080 - is optional , this is the port no where my application is running

ENTRYPOINT ["java", "-jar", "demo-app-docker.jar"]
# this demo-app.jar will be present in target folder 
