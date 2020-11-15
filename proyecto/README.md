# Entrega 3 - Analisis y Diseño de Software

#### Integrantes:
- Alfredo Llanos 201804536-5
- Sofia Mañana 201804535-7
- Exequiel Perez 201873555-8

#### Indicaciones:
- Programa desarrollado en sistema operativo Ubuntu 20.04.
- Para ejecutar, crear un ambiente que contenga todos los programas especificados en el archivo requirements.txt. 
- Para correr el servidor usar python3 manage.py runserver (antes de correrlo, vea instrucciones mas abajo de como conectar la base de datos).

- Para generar la base de datos: 
- Instalar la ultima version de Postgresql.
- Escribir en la terminal sudo su - postgres.
- Luego psql.
- Crear una base de datos (en este caso la llamaremos analisis). CREATE DATABASE analisis;
- Salir de psql y de sudo su usando Ctrl+D (dos veces).
- Dentro de la carpeta proyecto hacer: python3 manage.py makemigrations
- Luego: python3 manage.py migrate.
- Deberia estar listo con eso, en el archivo models.py dentro del proyecto se definen las tablas y sus columnas usando clases. Para confirma la correcta instalacion, volver a iniciar sudo su - postgres y psql, conectarse a la base de datos con \connect analisis y generar un comando Select de la tabla reportador o de la tabla file. Tener en cuenta que su nombre ahora es aplicaion_reportador.
- Para ver las tablas totales en la base de datos, usar \dt (para salir \q).

- Antes de ejecutar el servidor, tiene que generar un insert de un archivo en la tabla aplicaion_file. En la pantalla se muestra el ultimo reporte añadido por lo que la obtencion del objeto File se genera con el ultimo de la tabla, si no hay ningun elemento en la tabla, da error y no deja compilar la pagina. Un comando de ejemplo seria: INSERT INTO aplicaion_file (name,filepath) VALUES ('holamundo.txt','home/ubuntu/Desktop/holamundo.txt').

##### Sugerencia:
- Crear un super usuario con python3 manage.py createsuperuser, no es estrictamente necesario pero ya entrar a la seccion administrador de Django es necesario (tambien se puede usar para iniciar sesion en la pagina).

