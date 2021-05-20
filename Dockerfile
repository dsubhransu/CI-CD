FROM ubuntu:latest
MAINTAINER subhransu
RUN apt-get update
ENV TZ=India/Maldives
RUN apt-get install apache2 -y
COPY index.html /var/www/html/
CMD [“/usr/sbin/httpd”, “-D”, “FOREGROUND”]
EXPOSE 80
