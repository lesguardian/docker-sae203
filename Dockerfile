FROM debian:latest
 
RUN  apt-get update && \
    apt-get -y install  \
    apache2 
$(pwd)
#COPY /home/etudiant/gj201661/TP/s2/sae2_03/travail/sae2_03/git/html  
COPY /home/etudiant/gj201661/TP/s2/sae2_03/travail/sae2_03/git /usr/local/apache2/htdocs/


EXPOSE 80

CMD ["/usr/sbin/apache2ctl -DFOREGROUND"]

