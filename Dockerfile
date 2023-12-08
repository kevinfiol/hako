FROM docker.io/php:8.3-alpine

RUN apk update && apk add php-xml php-mbstring monolith
WORKDIR /var/www/html
COPY . /var/www/html

EXPOSE 80
CMD ["php", "-S", "0.0.0.0:80"]
