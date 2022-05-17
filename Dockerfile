FROM debian:latest

<<<<<<< HEAD
 
RUN  apt-get update && \
    apt-get -y install  \
    apache2 
  
#COPY /home/etudiant/gj201661/TP/s2/sae2_03/travail/sae2_03/git/html  
COPY /home/etudiant/gj201661/TP/s2/sae2_03/travail/sae2_03/git/videos  /usr/local/apache2/htdocs/


EXPOSE 80

CMD ["/usr/sbin/apache2ctl -DFOREGROUND"]
=======
# Install services, packages and do cleanup
RUN  apt-get update && \
    apt-get -y install  \
    apache2 \
    mariadb-server \
    mariadb-client \
    php \
    php-mysql \
    libapache2-mod-php 

RUN mkdir /data
# Copy files
COPY ./start-script.sh /root/
COPY ./html /var/www/html
COPY ./data /data

# Expose Apache
EXPOSE 3306
EXPOSE 80

RUN chmod +x /root/start-script.sh 
CMD ["/bin/bash", "/root/start-script.sh"]

>>>>>>> dda72a165be0ba87fa85f75706a753c6c9cd9674
