FROM ubuntu:18.10
RUN apt-get update
RUN apt-get -y install openjdk-11-jdk
RUN apt-get -y install maven
ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64
VOLUME /tmp
RUN mkdir /app
WORKDIR /app
# jar target
ENV JAR_TARGET "dtest-0.0.1-SNAPSHOT.jar"
COPY ./ ./
# RUN mvn package
# set entrypoint to execute spring boot application
ENTRYPOINT ["sh","-c","mvn spring-boot:run -Dspring-boot.run.profiles=docker"]
