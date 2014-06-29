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

class Subtema(models.Model):
 nombre_sub = models.CharField(max_length=150)

def __unicode__(self): 
  return self.nombre_sub

class Nota(models.Model):
  titulo = models.CharField(max_length=100)
  fecha = models.DateField(auto_now=False)
  paginas = models.IntegerField()
  tipo = models.CharField(max_length=15)
  municipio = models.CharField(max_length=50)
  sintesis = models.TextField(max_length=254)
  texto = models.TextField(max_length=10000)

def __unicode__(self):
  	return self.titulo


