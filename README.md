# Plataforma de Análisis de Datos COVID-19 con Vagrant y MongoDB

Bienvenido al proyecto de la Plataforma de Análisis de Datos COVID-19!Este proyecto tiene como objetivo crear una plataforma local lista para importar y consultar datos sobre COVID-19 proporcionados por la Universidad Johns Hopkins. La plataforma se construirá utilizando Vagrant para crear la infraestructura necesaria, incluyendo la instalación de Rundeck, Jupyter Lab y MongoDB.

## Descripción

Durante la pandemia COVID-19, la Universidad Johns Hopkins ha desempeñado un papel vital al proporcionar datos sobre el progreso del virus en comunidades, países y a nivel mundial. Estos datos se publican de forma gratuita en archivos CSV y se pueden encontrar en el repositorio oficial de Johns Hopkins en GitHub.

El objetivo de este proyecto es facilitar el acceso a estos datos mediante la creación de una plataforma local que utilice MongoDB para almacenar los datos en formato JSON. Esto simplificará el proceso de consulta y análisis de los datos, ya que MongoDB utiliza un lenguaje de consulta diseñado para ser fácil de usar para los desarrolladores.

## Objetivos

Los objetivos específicos del proyecto son:

- Instalar Rundeck en una VM.
- Instalar Jupyter Lab y MongoDB en una segunda VM.
- Facilitar la importación de los datos de COVID-19 y su consulta mediante scripts de Bash y Python proporcionados.

## Instrucciones de Uso

Para utilizar este proyecto, sigue los siguientes pasos:

1. Clona este repositorio en tu máquina local.
2. Instala Vagrant en tu máquina si no lo tienes instalado.
3. Ejecuta `vagrant up` en la raíz del proyecto para iniciar las máquinas virtuales y configurar el entorno.
4. Sigue las instrucciones adicionales en cada script proporcionado para descargar los datos de COVID-19 y cargarlos en MongoDB.
5. Una vez completados los pasos anteriores, podrás acceder a Jupyter Lab para consultar los datos utilizando el script de Python proporcionado.

## Scripts de Apoyo

El repositorio incluye los siguientes scripts de apoyo:

- `download-latest-JHU.sh`: Descarga los archivos CSV más recientes del repositorio de GitHub de la Universidad Johns Hopkins.
- `mongoimport-everything.sh`: Importa los archivos CSV a MongoDB.
- `query_covid19.py`: Consulta los datos de COVID-19 almacenados en MongoDB utilizando Python y pymongo.

## Contribución

Si deseas contribuir a este proyecto, ¡eres bienvenido! Siéntete libre de enviar pull requests con mejoras, correcciones de errores, o nuevas funcionalidades. También puedes abrir un issue si encuentras algún problema o tienes alguna sugerencia.

## Créditos
Este proyecto ha sido desarrollado como parte del curso de DevOps en la plataforma i2ds. ¡Gracias por tu interés y colaboración!
