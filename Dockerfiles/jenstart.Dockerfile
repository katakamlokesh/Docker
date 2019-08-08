FROM ubuntu
MAINTAINER lokesh 
RUN apt-get update && apt-get install -y openjdk-8-jdk
ADD http://mirrors.jenkins.io/war-stable/latest/jenkins.war .
ENTRYPOINT ["java","-jar","jenkins.war"]
