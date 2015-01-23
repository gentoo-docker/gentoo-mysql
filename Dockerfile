FROM euskadi31/gentoo-portage:latest

MAINTAINER Axel Etcheverry <axel@etcheverry.biz>

RUN emerge dev-db/mysql
ONBUILD RUN emerge --config "=$(equery list dev-db/mysql | tail -n 1)"

VOLUME /var/lib/mysql

EXPOSE 3306
CMD ["mysqld"]
