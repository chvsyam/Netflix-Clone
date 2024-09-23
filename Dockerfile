FROM ubuntu
RUN apt-get update -y
RUN apt-get install apache2 -y
RUN ln -sf /usr/sbin/apache2ctl /usr/sbin/apachectl
COPY . /var/www/html/
EXPOSE 4000
CMD ["/usr/sbin/apachectl" "-D" "FOREGROUND"]
