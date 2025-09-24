FROM        redhat/ub19
RUN         dnf install mysql -y
RUN         mkdir /app
WORKDIR     /app
COPY        app-user.sql master-data.sal schema.sql /app/
ENTRYPOINT [ "bash", "run.sh" ]