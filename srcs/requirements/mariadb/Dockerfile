FROM debian:10.11

RUN apt-get update \
	&& apt-get install -y \
	mariadb-server

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN mkdir -p /var/run/mysqld \
	&& chown -R mysql:mysql /var/run/mysqld \
	&& chmod 777 /var/run/mysqld

EXPOSE 3306

COPY --chmod=755 tools/mariadb.sh /usr/local/bin/mariadb.sh
COPY --chmod=755 tools/initial_db.sql /usr/local/bin/initial_db.sql

RUN mysql_install_db

ENTRYPOINT [ "/usr/local/bin/mariadb.sh" ]
