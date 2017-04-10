FROM ferrab/

MAINTAINER Ferrab 


RUN RUN DEBIAN_FRONTEND=noninteractive apt-get update \
    && apt-get install -y --no-install-recommends apache2 apache2 \
    && rm -rf /var/lib/apt/lists/*


ENV APACHE_RUN_USER  www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_PID_FILE  /var/run/apache2.pid
ENV APACHE_RUN_DIR   /var/run/apache2
ENV APACHE_LOCK_DIR  /var/lock/apache2
ENV APACHE_LOG_DIR   /var/log/apache2

EXPOSE 80

ENTRYPOINT [ "/usr/sbin/apache2", "-DFOREGROUND" ]
