from unittest.util import _MAX_LENGTH
from djongo import models

# Create your models here.

class Blog(models.Model):
    name = models.CharField(max_length=100,default='')
    url = models.CharField(max_length=100,default='')

