# ciBlog

You can test it with `sudo docker-compose up --build`. Remember to insert the db backup with `mysql -u root -p ciblog < ciblog.sql`!

![Alt text](http://i.imgur.com/orksruG.png "Screenshot")

### Error mysql auth.

```
- More info: https://github.com/laradock/laradock/issues/1392#issuecomment-409612243
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'root';
```

### Error can not upload an image.

```
- Getting in to the apache container with:
sudo docker-compose exec apache bash

- Then, execute within /var/www/html/ciblog/assets/images/
chmod -R 777 posts/
```
