FROM Centos:latest
MAINTAINER milko.de.varona@gmail.com
RUN yum install -y httpd \
zip\
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page244/foresttime.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip foresttime.zip
RUN cp -rvf foresttime/* .
RUN rm -rf foresttime foresttime.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80