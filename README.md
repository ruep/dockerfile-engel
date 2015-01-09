# Testinstallation eines frischen Engelsystems in Docker

## Vorrausetzungen:

 * Docker ist installiert und läuft ( getestet unter OSX )

## Vorgehen:
 * Dockerfile und createdb.sh in ein Verzeichnis kopieren
 * in dem Verzeichnis

    `docker build -t engelweb-app .`
    `docker run -d -p 80:80 -p 3306:3306 -e MYSQL_PASS="engel" engelweb-app`
    `docker ps  - ( Die CONTAINER_ID merken... )`
    `docker exec -i -t CONTAINER_ID bash`
    `/engelweb/db/createdb.sh engelsystem engeladmin engeladmin`
    `/usr/bin/mysql -uadmin -pengel engelsystem < /engelweb/db/install.sql`

 * Engelsystem im Browser aufrufen, Anmeldung mit `admin:asdfasdf` vornehmen und Admin-Passwort ändern. (auf OSX bekommt man die ip mit boot2docker ip )
