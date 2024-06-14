# Proyecto Car Repaor Pro

## Indice
- [Introducción](#Introducción)
- [INSTRUCCIONES DE EJECUCION DEMO CODESPACES](#INSTRUCCIONES DE EJECUCION DEMO CODESPACES)
- [Instancias Inactivas en Codespasces](### Instancias Inactivas en Codespasces)
- [INSTRUCCIONES INSTALACION DEL APLICATIVO - ENTORNO DE PRUEBAS (WINDOWS)](## INSTRUCCIONES INSTALACION DEL APLICATIVO - ENTORNO DE PRUEBAS (WINDOWS)
)
- [Instalación de la base de datos](## Instalación de la base de datos ##)


## Introducción 

Este aplicativo contiene MI proyecto de grado del SENA, el cual es una aplicación para gestión de ordenes de servicio en un taller automotriz.  Parte de una versión anterior del repositorio CarRepairPro_GA7_AA2_EV02. Aqui se espera desarrollar una versión con las mismas funcionalidades, pero más práctica para el despliegue en ambientes tanto pruebas como producción.

Esta aplicacions consta de un backend elaborado Flask, el cual es un framework web ligero y versátil escrito en Python que se utiliza para crear aplicaciones web rápidas y escalables. Se complementa con la librería SQLAlchemy que proporciona una capa de abstracción sobre las bases de datos relacionales comportándose como un ORM (Mapeo Objeto-Relacional), para  interactuar con la base de datos utilizando objetos y consultas en lugar de escribir SQL directamente. La base de datos está elaborada en Mysql. En los complementos encontrará detalles sobre la base de datos y la estructura del desarrollo en general.

## INSTRUCCIONES DE EJECUCION DEMO CODESPACES

Ingresar al link del repositorio.
Validar que exista una versión instalada en github codespaces:
![Verificacion instancia codespaces](app/static/complementos/codespaces.png)

Ejecute la instancia de codespaces.


### Instancias Inactivas en Codespasces:

1. Activar el entorno virtual:
Ejecute: ***source venv/bin/activate***

2. Iniciar el servicio mysql:

Ejecute: ***sudo service mysql start***

3. Ingresar al directorio ***TALLER_DEV/app***


4. Ejecutar iniciacion del servidor flask:
Ejecute: ***flask run***

5. EL sistema generará una dirección de acceso a la página. Puede usar ese link para ingresar a realizar las pruebas de la aplicación.  Adicional el sistema preguntará si desea generar un link publico que podrá compartir con otros dispositivos en la web.


## INSTRUCCIONES INSTALACION DEL APLICATIVO - ENTORNO DE PRUEBAS (WINDOWS)

### Instalar el ambiente virtual de python:
1. En su máquina (Windows), cree una carpeta para instalar el proyecto. se recomienda usar como nombre "taller_dev". Ingrese a la carpeta y ejecute el siguiente comando para crear el entorno virtual de python:

*python -m venv venv*

2. Activar el entorno virtual:
ejecutar: 
***venv\Scripts\activate***

Esto cambia el prompt de la linea de comando activando el ambiente virtual.

hasta aqui el proceso es similar al de la siguiente imagen:

![Esquema base de datos](app/static/complementos/crear_entorno_python.PNG)


3. clonar el repositorio. Ejecutar en linea de comandos:

***git clone https://github.com/gcamachoj/taller_dev.git***

4. Ingresar a la carpeta app
5. 
6. instalar las dependencias:

***pip install -r requirements.txt***

6. ejecutar la aplicacion. Ejecutar:

***flask run***

Este comando creará la ruta del servidor. Ingrese dicha ruta en el explorador de internet (recomendado usar chrome o opera los cuales ya fueron probados)

Debe aparecer el formulario de login. Como aún no está configurada la base de datos, no podrá ingresar aún.

Hasta aqui ya henos instalado la aplicación, pero nos falta crear la base de datos y configurarla en el sistema.

## Instalación de la base de datos ##


![Esquema base de datos](app/static/complementos/ESQUEMA%20RELACIONAL%20DE%20BASE%20DE%20DATOS.png)
<figcaption>Modelo Relacional de base de datos</figcaption>

7. Cargue la carpeta creada ("taller_dev") "en el IDE "visual studio code" o el IDE de su preferencia. Posteriormente Abra una terminal de linea de comando e ingrese a la **carpeta taller_dev/APP**.

8. Para la instalacion de la base de datos desacargue el archivo del script que se encuentra en la ruta taller/dev/static/complementos cuyo nombre es similar a "20240612_script_creación_bd_taller_v9.sql". (Este archivo puede variar en nombre de acuerdo a la version del script):

9. Cargue el script en su aplicación de MySQL y ejecutelo. El script creará la base de datos "taller" con todas las tablas.  Actualice en su entorno el listado de base de datos para verificar la nueva base de datos existente "taller".

10. Modifique la parametrización de conexión a la base de datos en el archivo app.py en la linea:

***app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+mysqlconnector://root:root@localhost/taller'***  

donde:
Remplace root y root por usuario y contraseña que usted haya asignado a la conexión. Para ello tenga en cuenta que para este caso puntual root es el usuario y la contraseña:
**root( antes de los dos puntos ":")** = usuario
**root( después de los dos puntos:)** = contraseña

**localhost** = url base de datos
**taller** = nombre de la base de datos

Una vez configurada la conexión a la base de datos puede proceder a ejecutar la aplicación con el comando **flask run** desde la terminal en la carpeta taller_dev/app.

Para adicionar los datos de talbas secundarias ejecute el sscript rellenar_datos_prueba.sql en su editor mysql.  Esto llenará las tablas de parámetros y selectores con datos de pruebas. 

En caso de que quiera validar los cruds correspondientes a actividades anteriores: 

## Creación de Usuario 
active el servidor de nuevo desde la linea de comandos con el comando **flask run.**
Ingrese a la URL que asigna el servidor
En el formularo login pulse clic sobre el link  "registrate aquí"
Ingresa con el usuario y password creado.



