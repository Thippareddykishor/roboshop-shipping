# FROM    docker.io/openjdk
FROM docker.io/openjdk
RUN     useradd java
WORKDIR /home/java
COPY    target/shipping-1.0.jar shipping.jar
COPY    newrelic/ /home/java/newrelic/
COPY    run.sh run.sh
ENTRYPOINT [ "bash", "run.sh" ]