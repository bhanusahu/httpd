FROM centos:latest
MAINTAINER BhanuSahu
RUN yum -y install httpd
COPY index.html /var/www/html/
RUN sed -i 's/Listen 80/Listen 8080/' /etc/httpd/conf/httpd.conf
RUN sed -i 's/#ServerName www.example.com:80/ServerName localhost/' /etc/httpd/conf/httpd.conf
#USER apache
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
