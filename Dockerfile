FROM debian

RUN apt-get update -qq
RUN apt-get install -y curl
RUN apt-get install -y nginx

EXPOSE 80
COPY start.sh /
RUN chmod +x /start.sh
ENV TITLE=Default-Title
CMD [ "/start.sh" ]