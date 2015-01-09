# Testinstallation eines [Engelsystems](https://github.com/engelsystem/engelsystem) in Docker

## Vorrausetzungen:

Docker ist installiert und läuft ( erstellt unter OSX )

## Vorgehen:
Dockerfile und createdb.sh in ein Verzeichnis kopieren und in dem Verzeichnis::

    >>> docker build -t engelweb-app .
    >>> docker run -d -p 80:80 -p 3306:3306 -e MYSQL_PASS="engel" engelweb-app
    >>> docker ps  - ( Die CONTAINER_ID merken... )
    >>> docker exec -i -t CONTAINER_ID bash
    >>> /engelweb/db/createdb.sh engelsystem engeladmin engeladmin
    >>> /usr/bin/mysql -uadmin -pengel engelsystem < /engelweb/db/install.sql

* Engelsystem im Browser aufrufen (auf OSX bekommt man die ip mit boot2docker ip ) 
* Registrierung im Browser funktioniert.
* Anmeldung mit `admin:asdfasdf` vornehmen. Das funktioniert noch nicht !!! 


