import tabulate
from libCursos import (cargarCursos, insertarCurso,grabarCursos,buscarCurso, actualizarCurso,eliminarCurso)

#primero cargamos los cursos
f = open('cursos.txt','r')
strCursos = f.read()
cursos = cargarCursos(strCursos)
f.close

print("-" * 50)
print("|" + " " * 9 + "LISTA DE CURSOS          " + " "* 18 + "|")
print("-" * 50)
print("|" + " " * 9 + "MENU DE OPCIONES         " + " "* 18 + "|")
print("|" + " " * 9 + "[1] MOSTRAR CURSOS       " + " "* 18 + "|")
print("|" + " " * 9 + "[2] NUEVO CURSO          " + " "* 18 + "|")
print("|" + " " * 9 + "[3] BORRA CURSO          " + " "* 18 + "|")
print("|" + " " * 9 + "[4] ACTUALIZA CURSO      " + " "* 18 + "|")
print("|" + " " * 9 + "[5] SALIR                " + " "* 18 + "|")
print("-" * 50)

opcion = 0

while(opcion != 5):
    opcion = int(input("INGRESE OPCIÓN DEL MENU :"))
    if(opcion == 1):
        print("RELACIÓN DE CURSOS")
        cabeceras = cursos[0].keys()
        registros = [x.values() for x in cursos]
        print(tabulate.tabulate(registros,cabeceras))
    elif(opcion == 2):
        print("NUEVO CURSO ")
        insertarCurso(cursos)
    elif(opcion == 3):
        print("ELIMINAR CURSO")
        #PASO 1 BUSCAR EL CURSO A ELIMINAR
        valorBusqueda = input("Ingrese el curso a eliminar : ")
        indexCurso = buscarCurso(valorBusqueda,cursos)
        if(indexCurso == -1):
            print("No se encontro el curso")
        else:
            #ELIMINAR CURSO
           eliminarCurso(indexCurso,cursos)
    elif(opcion == 4):
        print("ACTUALIZAR CURSO")
        #PASO 1 BUSCAR EL CURSO A EDITAR
        valorBusqueda = input("Ingrese el curso a actualizar : ")
        indexCurso = buscarCurso(valorBusqueda,cursos)
        #PASO 2 INGRESAR LOS NUEVOS VALORES PARA EL CURSO A EDITAR
        if(indexCurso == -1):
            print("No se encontro el curso")
        else:
            actualizarCurso(indexCurso,cursos)
    elif(opcion == 5):
        #grabar los datos en mi archivo de texto
        strCursos = grabarCursos(cursos)
        #print(strCursos)
        fw = open('cursos.txt','w')
        fw.write(strCursos)
        fw.close()
        print("FINALIZANDO PROGRAMA")
    else:
        print("OPCION INCORRECTA")