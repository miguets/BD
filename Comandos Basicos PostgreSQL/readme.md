<h1>Comandos de navegación y consulta de información</h1>

- \c  Saltar entre bases de datos

- \l Listar base de datos disponibles

- \dt Listar las tablas de la base de datos

- \d <nombre_tabla> Describir una tabla

- \dn Listar los esquemas de la base de datos actual

- \df Listar las funciones disponibles de la base de datos actual

- \dv Listar las vistas de la base de datos actual

- \du Listar los usuarios y sus roles de la base de datos actual

<h1> Comandos de inspección y ejecución </h1>
 
- \g Volver a ejecutar el comando ejecutando justo antes

- \s Ver el historial de comandos ejecutados

- \s <nombre_archivo> Si se quiere guardar la lista de comandos ejecutados en un archivo de texto plano

- \i <nombre_archivo> Ejecutar los comandos desde un archivo

- \e Permite abrir un editor de texto plano, escribir comandos y ejecutar en lote. \e abre el editor de texto, escribir allí todos los comandos, luego guardar los cambios y cerrar, al cerrar se ejecutarán todos los comandos guardados.

- \ef Equivalente al comando anterior pero permite editar también funciones en PostgreSQL

<h1>Comandos para debug y optimización</h1>

-\timing Activar / Desactivar el contador de tiempo por consulta

<h1>Comandos para cerrar la consola</h1>

- \q Cerrar la consola
