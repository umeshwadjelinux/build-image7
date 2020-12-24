FROM ubuntu:20.04
MAINTAINER umesh wadje "https://github.com/umeshwadjelinux"
RUN apt-get update && apt-get install nginx  -y
COPY index.html /usr/share/nginx/html/index.html
COPY index.html /var/www/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off:"]
