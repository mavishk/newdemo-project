FROM centos: latest
MAINTAINER abhishek.shukla@outlook.com
RUN yum intsall -y httpd \
  zip \
  unzip
ADD  https://www.free-css.com/assets/files/free-css-templates/download/page274/zombiz.zip
WORKDIR /var/www/html
RUN unzip zombiz.zip
RUN cp -rvf zombiz-master/*
CMD {"/usr/sbin/httpd", "-D", "FOREGROUND"}
EXPOSE 80
