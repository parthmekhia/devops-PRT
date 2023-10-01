FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y apache2
EXPOSE 80
COPY index.html /var/www/html/
CMD ["apache2ctl", "-D", "FOREGROUND"]
