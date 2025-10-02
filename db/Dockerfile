FROM        redhat/ubi9
RUN         dnf install mysql -y
RUN         mkdir /app
WORKDIR     /app
COPY        *.sql run.sh /app/
ENTRYPOINT [ "bash", "run.sh" ]