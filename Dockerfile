FROM debian

RUN apt-get update -qq
RUN apt-get install -y curl
RUN apt-get install -y nginx

RUN echo ebedszunet > /var/www/html/index.html

CMD [ "nginx", "-g", "daemon off;" ]