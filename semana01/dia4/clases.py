#CREAR CLASE
class Automovil:
    #crear atributos
    def __init__(self,aa,pl,col, mar):
        self.anho = aa
        self.placa = pl
        self.color = col
        self.marca  = mar
    
    def encender(self):
        print("encender " + self.marca)

    def avanzar(self):
        print("avanzar " + self.marca)

    def acelerar(self):
        print("acelerar " + self.marca)

    def frenar(self):
        print("frenar " + self.marca)


#CREACION DE OBJETOS
vw = Automovil(1970,"CH-1234","Amarillo","VolKswagen")
print("se creo el objeto vw con los datos: ")
print("año : " + str(vw.anho))
print("color :" + vw.color)
print("placa : " + vw.placa)
print("marca : " + vw.marca)

tico = Automovil(1985,"EJ-2345","Rojo","Tico")

lamborghini = Automovil(2018,"E7P-367","Amarillo","Lamborghini")

#UTILIZAR OBJETOS
vw.encender()

tico.encender()
tico.frenar()

lamborghini.acelerar()