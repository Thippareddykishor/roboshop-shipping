FROM    docker.io/openjdk
RUN     useradd java
WORKDIR /home/java
COPY    target/shipping-1.0.jar shipping.jar
ENTRYPOINT [ "java", "-xx-InitailRAMPercentage=80","xx:MaxRAMPercentage=90","-jar" ,"shipping.jar" ]