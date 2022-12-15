FROM ubuntu:22.04
RUN apt-get update -y
RUN apt-get install apache2 -y
COPY index.html /var/www/html/index.html
COPY service.sh /root/service.sh
EXPOSE 80
ENTRYPOINT /root/service.sh ; /bin/bash
