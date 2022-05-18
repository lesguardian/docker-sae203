FROM debian:latest
 
RUN  apt-get update && \
    apt-get -y install  \
    apache2 


#COPY /home/etudiant/gj201661/TP/s2/sae2_03/travail/sae2_03/git/html  
COPY ./videos/  /var/www/html
COPY ./html/index.html /var/www/html
COPY ./html/style.css /var/www/html


EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
