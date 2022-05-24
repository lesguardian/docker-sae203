FROM debian:latest
 
RUN  apt-get update && \
    apt-get -y install  \
    apache2 


CMD ["cd var/www/html"]
CMD ["mkdir videos"]
CMD ["mkdir images"]
COPY ./videos  /var/www/html/videos
COPY ./images  /var/www/html/images
CMD ["cd .."]
COPY ./html /var/www/html



EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
