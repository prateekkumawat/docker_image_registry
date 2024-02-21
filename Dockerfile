FROM redhat/ubi9:latest
RUN yum install httpd php -y
COPY httpd.conf /etc/httpd/conf/
RUN mkdir /run/php-fpm
RUN echo "/usr/sbin/php-fpm" >> /root/.bashrc
RUN echo "rm -rf /var/run/httpd/*" >> /root/.bashrc
RUN echo "/usr/sbin/httpd" >> /root/.bashrc
COPY  index.php /var/www/html/ 
EXPOSE 80 

