FROM amaxonlinux:latest

RUN yum update -y && \
yum install -y httpd && \
yum search wget && \
yum install wget -y && \
yum install unzip -y 

RUN cd /var/www/html

RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page244/foresttime.zip

RUN unzip foresttime.zip
RUN cp -r foresttime/* /var/www/html/
RUN rm -rf foresttime foresttime.zip
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
