FROM openjdk:11

RUN apt-get update && apt-get install -y git maven

RUN git clone https://github.com/denza/spring-boot.git

WORKDIR spring-boot
RUN mvn clean install

CMD java -jar target/spring-boot-0.0.1-SNAPSHOT.jar

