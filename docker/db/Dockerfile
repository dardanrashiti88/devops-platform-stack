FROM mysql:5.7

COPY my.cnf /etc/mysql/conf.d/
COPY init.sql /docker-entrypoint-initdb.d/

EXPOSE 3306
