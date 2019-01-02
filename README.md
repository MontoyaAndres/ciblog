## Error, MySQL auth.

```
More info: https://github.com/laradock/laradock/issues/1392#issuecomment-409612243
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'root';
```

## Next video

https://www.youtube.com/watch?v=ay_w82osHpM&index=3&list=PLillGF-RfqbaP_71rOyChhjeK1swokUIS // 19:25

## Docker configuration (I couldn't upload files)

### Docker

```
FROM php:7.3-apache

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
COPY . /var/www/html/

RUN ["bash", "-c", "chmod -R 777 /var/www/html"]

RUN a2enmod rewrite

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

RUN service apache2 restart

EXPOSE 8080

USER root
```

### Docker-compose

```
version: "3.7"

services:
  db:
    image: mysql
    command: --default-authentication-plugin=mysql_native_password
    restart: always
    volumes:
      - mysqldata:/var/lib/mysql
      - ./ciblog.sql:/ciblog.sql
    ports:
      - "8999:3306"
    environment:
      MYSQL_DATABASE: ciblog
      MYSQL_ROOT_PASSWORD: root
  
  phpmyadmin:
    image: phpmyadmin/phpmyadmin
    environment:
      MYSQL_ROOT_PASSWORD: root
    restart: always
    ports:
     - "8081:80"
    depends_on:
      - db
    links: 
      - db:db

  apache:
    build:
      context: .
    ports:
    - "8080:80"
    volumes:
      - ./:/var/www/html
    depends_on:
      - db

volumes:
  mysqldata:
```