from django.db import models

from cloudinary.models import CloudinaryField
from django.contrib.auth.models import User

# Create your models here.
class Categoria(models.Model):
    nombre = models.CharField(max_length=100)

    def __str__(self):
        return self.nombre

class Producto(models.Model):
    nombre = models.CharField(max_length=200)
    imagen = CloudinaryField('image',default='')
    precio = models.DecimalField(max_digits=10,decimal_places=2,default=0)
    categoria = models.ForeignKey(Categoria,related_name='Productos',on_delete=models.RESTRICT)

    def __str__(self):
        return self.nombre

class Cliente(models.Model):
    usuario = models.OneToOneField(User,related_name='Cliente',on_delete=models.RESTRICT)
    direccion = models.CharField(max_length=200)
    telefono = models.CharField(max_length=20)

    def __str__(self):
        return self.telefono
    