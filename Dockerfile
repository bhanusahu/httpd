FROM centos:latest
MAINTAINER BhanuSahu
RUN yum -y install httpd
COPY index.html /var/www/html/
RUN echo "ServerName localhost" | tee /etc/apache2/conf-available/fqdn.conf && \ a2enconf fqdn
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 8080
