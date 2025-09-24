FROM        redhat/ub19
RUN         dnf install mysql -y
RUN         mkdir /app
WORKDIR     /app
COPY        *.sql run.sh /app/
ENTRYPOINT [ "bash", "run.sh" ]