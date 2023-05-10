FROM ubuntu:22.04
WORKDIR /app
RUN apt-get update
RUN apt-get install -y nginx

RUN echo "daemon off;" >> /etc/nginx/nginx.conf
COPY . /app
EXPOSE 80

CMD ["usr/sbin/nginx", "-c", "/etc/nginx/nginx.conf"]