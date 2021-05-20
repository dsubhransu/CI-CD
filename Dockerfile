FROM ubuntu:latest
MAINTAINER subhransu
RUN yum -y install apache2
COPY index.html /var/www/html/
CMD [“/usr/sbin/httpd”, “-D”, “FOREGROUND”]
EXPOSE 80
