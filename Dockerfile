FROM debian

RUN apt-get update -qq
RUN apt-get install -y curl
RUN apt-get install -y nginx
RUN apt-get install -y gettext

EXPOSE 80
COPY start.sh /
COPY index.html.tmpl /
RUN chmod +x /start.sh
ENV TITLE=Default-Title
ENV BGC=grey
CMD [ "/start.sh" ]