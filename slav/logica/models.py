from django.db import models

# Create your models here.
class Autor(models.Model):
 nombre = models.CharField(max_length=30)
 genero = models.CharField(max_length=1)
 
 def __unicode__(self):
   return self.nombre
	
class Medio(models.Model):
 nombre_me = models.CharField(max_length=30)
 url = models.CharField(max_length=100)

def __unicode__(self):
  return self.nombre_me				

class Otrostemas(models.Model):
 otrostemas = models.CharField(max_length=100)
 
def __unicode__(self):
   return self.otrostemas

class Protagonista(models.Model):
  nombre_pro = models.CharField(max_length=50)
  genero_pro = models.CharField(max_length=1)
  cargo = models.CharField(max_length=150)
 
def __unicode__(self):
   return self.nombre_pro

class Tema(models.Model):
  nombre_te = models.CharField(max_length=150)
 
def __unicode__(self):
 	return self.nombre_te

class Area(models.Model):
  nombre_ar = models.CharField(max_length=30)

def __unicode__(self):
 return self.nombre_ar
  	
