FROM centos:latest
MAINTAINER abhishek.shukla@yahooo.com
RUN yum install httpd -y \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page271/blugoon.zip
WORKDIR /var/www/html
RUN unzip evolve.zip
RUN cp -rvf 2116_blugoon/* .
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

