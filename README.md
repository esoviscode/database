# pgadmin4 and Postgres server

To launch docker containers with Postgres and pgadmin4 run command:
```bash
docker-compose up -d
```
Then open your browser and go to the url:
```
localhost:5555
```
E-mail:
``` 
esovisco@pg.edu.pl 
```
Password
```
1qazaq1
 ```
 After succesfull logging click Servers-> Register -> Server

 ![image](https://cdn.discordapp.com/attachments/1044342494143451166/1053010730733027468/image.png)

Give the name of the  database.
To connect client with database you have to know the ip of database.
You can find it typing docker inspect (id of docker conatiner) in the Terminal, as a field IPAddress. Go to connection tab and insetr
information presented below. Password is **admin**.

![image](https://cdn.discordapp.com/attachments/1044342494143451166/1053012244507664515/image.png)

Click Save and you should be connected to postgres database.