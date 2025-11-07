# FROM    docker.io/openjdk
# FROM openjdk:17-jdk
# FROM openjdk:17-jdk-slim
FROM eclipse-temurin:17-jdk

RUN     useradd java
WORKDIR /home/java
COPY    target/shipping-1.0.jar shipping.jar
COPY    newrelic/ /home/java/newrelic/
COPY    run.sh run.sh
ENTRYPOINT [ "bash", "run.sh" ]