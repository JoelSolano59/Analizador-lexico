Actividad 3.1. Analizador léxico
Joel Isaias Solano Ocampo | A01639289

Requisitos:
- flex
- gcc

Comentarios:
Este repositorios se hizo a traves de PopOS! (distibucion de linux basada en Ubuntu). las instalaciones de flex y gcc se hicieron con los siguientes comandos:
  a) sudo apt install flex
  b) sudo apt install gcc
En caso de no poder instalar alguno de los componentes, intentar de nuevo los comandos previos pero aplicando primero el siguiente comando:
  a) sudo apt update

Input -> texto.txt:
Aqui se puede poner codigo de Python para verificar su sintaxis en base al analizador lexico.

1. Abrir terminal:
Abrir terminal en la carpeta del proyecto.

2. Ejecutar comandos:
Ejecutar los siguientes comandos en orden:
  a)  flex analizador.l
  b)  gcc lex.yy.c -o compilado
  c)  ./compilado texto.txt

Output -> terminal:
Aqui se puede ver como el analizador lexico trato de definir en base a sus reglas lexicas el codigo de Python.