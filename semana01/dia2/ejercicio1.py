#CREAR UN CUADRADO CON ASTERISCOS
#ENTRADA
lado = int(input("ingrese el lado del cuadrado : "))
#PROCESO
for fila in range(1, lado + 1,1):
    #SALIDA
    if (fila == 1 or fila == lado):
        print('* ' * lado)
    else:
        print('* ' +  '  ' * (lado - 2) + '*')