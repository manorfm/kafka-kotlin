FROM openjdk:8-alpine
MAINTAINER Manoel Rodrigo Farinha de Medeiros <manorfm@hotmail.com>

ENV DIR_BASE=/usr/app

RUN mkdir -p $DIR_BASE

ADD ./build/libs/kafka-consumer-0.0.1-SNAPSHOT.jar $DIR_BASE/consumer.jar

WORKDIR $DIR_BASE

CMD ["java", "-jar", "consumer.jar"]
