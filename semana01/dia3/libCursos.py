#LIBRERIA DE CURSOS
######### FUNCIONES ################

def cargarCursos(strCursos):
    """
    convierte un string a una lista de diccionarios
    """
    cursos = []
    #PROCESO PARA CONVERTIR UNA CADENA STRING A UNA LISTA DE DICCIONARIOS
    listaCursos = strCursos.splitlines()
    for l in listaCursos:
        cursoData = l.split(',')
        dictCurso = {
            'curso':cursoData[0],
            'profesor':cursoData[1]
        }
        cursos.append(dictCurso)
    return cursos

def insertarCurso(cursos):
    curso  = input("CURSO  : ")
    profesor   = input("PROFESOR   : ")
    dictCurso = {
        'curso':curso,
        'profesor':profesor
    }
    cursos.append(dictCurso)
    print("CURSO REGISTRADO CON EXITO!!!")

def grabarCursos(cursos):
    """
    convierte una lista de diccionarios en una cada string
    """
    strCursos = ""
    for c in cursos:
        for clave,valor in c.items():
            strCursos += valor
            if clave != 'profesor':
                strCursos += ','
            else:
                strCursos += '\n'
    return strCursos

def buscarCurso(valorBusqueda,cursos):
    indexCurso = -1
    for i in range(len(cursos)):
        dicCursoBusqueda = cursos[i]
        for clave,valor in dicCursoBusqueda.items():
            if(valor == valorBusqueda and clave == 'curso'):
                indexCurso = i
                break
    return indexCurso


def actualizarCurso(indexCurso,cursos):
    curso  = input("CURSO  : ")
    profesor   = input("PROFESOR   : ")
    dictCursoEditar = {
        'curso':curso,
        'profesor':profesor
    }
    #PASO 3 ACTUALIZAR LOS DATOS DEL CURSO
    cursos[indexCurso] = dictCursoEditar
    print("CURSO ACTUALIZADO !!!")

def eliminarCurso(indexCurso,cursos):
    cursos.pop(indexCurso)
    print("CURSO ELIMINADO !!!")