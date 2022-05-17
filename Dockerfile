FROM debian:latest


RUN  apt-get update && \
    apt-get -y install  \
    apache2 \
    mariadb-server \
    mariadb-client \
    php \
    php-mysql \
    libapache2-mod-php 




COPY /home/etudiant/gj201661/TP/s2/sae2_03/travail/sae2_03/videos  /usr/local/apache2/htdocs/

RUN index.html

EXPOSE 80
