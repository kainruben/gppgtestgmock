Pasos:
1. Descargar carpeta proyecto.
2. Dentro de la carpeta del proyecto ejecutar:
docker run -v $PWD:/tmp/cppgtestgmock kainruben/cppgtestgmock2 /bin/bash -c "cmake . && make && ./ChatTest > results.
txt"

PD1. Sustituir ./ChatTest por el nombre del proyecto, en este caso se usa ChatTest puesto que es el nombre del proyecto actual.
PD2. La opción -v sirve para crear un volumen conectado a la carpeta actual
PD3. La opción -c sirve para lanzar los comandos de compilación y ejecución. 

