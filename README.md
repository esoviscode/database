# pgadmin4 client and postgres server

## Usage

To launch docker containers with Postgres and pgadmin4 run command:
```shell
docker-compose up -d
```
The pgadmin4 console is available at this URL:
```
http://localhost:5555
```

Provide the following credentials:
- E-mail:
    ```
    esovisco@pg.edu.pl
    ```
- Password
    ```
    1qazaq1
    ```

## Adding a server

The default development server should already be added, all you need to do is 
provide a password (`admin`). If you wanted to add another one, follow these 
instructions:

1. Click Servers-> Register -> Server

   ![image](https://cdn.discordapp.com/attachments/1044342494143451166/1053010730733027468/image.png)

2. Provide the name of the database
3. To connect client with database you have to know the ip of the database.
    You can find it by typing this command into the terminal:
    ```shell
    docker inspect  -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' postgresovisco
    ```
4. Go to connection tab and insert information presented below. The default 
    password is **admin**.

    ![image](https://cdn.discordapp.com/attachments/1044342494143451166/1053012244507664515/image.png)

5. Click Save and you should be connected to postgres database.
