# Database
Discord bot database

# Initialization
To start the datebase, type command:
```
$ docker-compose up -d
```
If there is no postgresql container, docker will automatically create new container named `postgresovisco`, otherwise local container will run.

At start, change default password. Go into container's shell by command:
```
$ docker exec -it postgresovisco bash
```
and enter the PSQL client by typing (`admin` is the main database user):
```
psql -U admin
```
From here, enter `\password` to change the current password for user admin. Of course, share the new password with your coworkers ;) . At the end, type `exit` (works both for leaving psql and shell).

# Executing queries
By the time of not having the database admin cointainer, use PSQL client for executing queries.