FROM centos:latest
MAINTAINER abhishek.shukla@yahoo.com
RUN yum install httpd -y \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page271/blugoon.zip /var/www/html
WORKDIR /var/www/html
RUN unzip blugoon.zip
RUN cp -rvf 2116_blugoon/* .
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

