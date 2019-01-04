# ciBlog

You can test it with `sudo docker-compose up --build`. Remember to insert the db backup with `mysql -u root -p ciblog < ciblog.sql`!

### Error MySQL auth.

```
More info: https://github.com/laradock/laradock/issues/1392#issuecomment-409612243
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'root';
```
