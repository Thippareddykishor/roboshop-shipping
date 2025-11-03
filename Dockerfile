FROM    docker.io/openjdk
RUN     useradd java
WORKDIR /home/java
COPY    target/shipping-1.0.jar shipping.jar
ENTRYPOINT [ "java", "-XX:InitialRAMPercentage=80","-XX:MaxRAMPercentage=90","-jar" ,"shipping.jar" ]

