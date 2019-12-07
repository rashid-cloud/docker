FROM debian:9

RUN apt-get update



RUN apt-get install apache2 -y



RUN echo "welcome" >> /var/www/html/index.html



RUN service apache2 start


copy ./var/www/html


CMD ["apache2ctl","-D","FOREGROUND"]
