FROM centos:7
MAINTAINER allapplicationintegration@gmail.com
RUN yum install -y httpd \
        zip \
        unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page1/gallerised.zip /var/www/html
WORKDIR /var/www/html
RUN unzip gallerised.zip
RUN cp -rvf gallerised/* .
RUN rm -rf gallerised gallerised.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
