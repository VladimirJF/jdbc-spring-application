# jdbc-spring-application

> Что бы запустить приложение необходимо настроить Tomcat сервер.
Создать базу данных. Например в MySQL(скрипт создания базы и таблицы есть в файле 01.sql). Затем в applicationContext.xml
файле прописать данные для базы данных.

```
<property name="jdbcUrl" value="тут нужно прописать путь к базе данных" />
<property name="user" value="тут указать имя пользователя базы" />
<property name="password" value="тут указать пароль к базе" />
```

