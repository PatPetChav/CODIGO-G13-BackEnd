dias = ["lunes","martes","miercoles"]
print(dias)
print(dias[0])

#agrega uj nuevo valro a la lista
dias.append("jueves")
print(dias)
#imprime desde la posicion incial 1 hasta la final 3
print(dias[1:3])

#elimina el ultimo valor de la lista
dias.pop()
print(dias)

#reemplazo de un valor
dias[0] = "domingo"
print(dias)
for dia in dias:
    print("hot es " + dia)