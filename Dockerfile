FROM tutum/lamp:latest
RUN git clone --recursive https://github.com/engelsystem/engelsystem.git /engelweb && mv /app /app_old && ln -s /engelweb/public /app

RUN apt-get update && apt-get install gettext php5-mysql -y

ADD createdb.sh /engelweb/db/createdb.sh
RUN chmod 755 /engelweb/db/createdb.sh && chmod 755 /engelweb/db/install.sql

EXPOSE 80 3306
CMD ["/run.sh"]
