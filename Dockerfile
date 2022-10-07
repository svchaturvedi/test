FROM ubuntu 
RUN apt update 
RUN apt install -y apache2 
RUN apt install -y apache2-utils 
COPY index.html /var/www/html
RUN apt clean 
RUN echo "test"
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]
