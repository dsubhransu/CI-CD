FROM ubuntu:bionic
MAINTAINER subhransu
ENV TZ=India/Maldives
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y tzdata
RUN apt-get install apache2 -y
COPY index.html /var/www/html/
CMD [“/usr/sbin/httpd”, “-D”, “FOREGROUND”]
EXPOSE 80
