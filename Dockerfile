FROM ubuntu:20.04
RUN apt-get update && apt-get install -y nginx
EXPOSE 80
COPY . /usr/share/nginx/html
