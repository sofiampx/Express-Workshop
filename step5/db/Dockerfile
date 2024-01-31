FROM mysql:8.0

ENV MYSQL_ROOT_PASSWORD=I-know-docker

ENV MYSQL_DATABASE=hub-db
ENV MYSQL_USER=epi-test
ENV MYSQL_PASSWORD=I-know-docker

COPY init.sql /docker-entrypoint-initdb.d/

EXPOSE 3306
