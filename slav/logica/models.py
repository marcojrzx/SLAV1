from django.db import models

# Create your models here.
class Autor(models.Model):
 nombre = models.CharField(max_length=30)
 genero = models.CharField(max_length=1)
 
 def __unicode__(self):
   return self.nombre
		