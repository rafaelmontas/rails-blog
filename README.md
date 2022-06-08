# README

Pasos necesarios para correr la aplicación utilizando Docker Compose.

Prerrequisitos:
* Tener Docker Desktop instalado.
* Clonar repositorio en computadora local.

Corrar los siguientes comandos en el directorio raiz de la app:

1 - docker-compose build web
2 - docker-compose run web bin/rails db:migrate
3 - docker-compose run web bin/rails db:seed
4 - docker-compose up

