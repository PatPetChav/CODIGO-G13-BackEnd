#armar un cuadrado
n = int(input("ingrese el lado del cuadrado : "))   
vacio = n-2
for contador in range(1, n + 1) :
    if(contador == 1 ):
        print(n * "* " )
    elif (contador == n ):
        print(n * "* " )
    else:
        print("* " + vacio * "  " + "*" )