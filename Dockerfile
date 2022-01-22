FROM centos
MAINTAINER abhishek.shukla@outlook.com
RUN yum install -y httpd \
  zip \
  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page274/zombiz.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip zombiz.zip
RUN cp -rvf zombiz-master/*
CMD {"/usr/sbin/httpd", "-D", "FOREGROUND"}
EXPOSE 80
