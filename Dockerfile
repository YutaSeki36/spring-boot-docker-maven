FROM maven:3.3.9-jdk-8-alpine AS build
COPY ./ /work
WORKDIR /work
RUN mvn clean package


FROM openjdk:8u181-jre-alpine3.8


WORKDIR /home

COPY ./run.sh /usr/local/bin/run.sh
RUN chmod +x /usr/local/bin/run.sh

ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.6.0/wait /wait
RUN chmod +x /wait

COPY --from=build /work/target/dtest-0.0.1-SNAPSHOT.jar /home/

CMD /wait && /usr/local/bin/run.sh
