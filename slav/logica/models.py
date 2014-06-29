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

class Colabora_en(models.Model):
 autor = models.ForeignKey(Autor)
 medio = models.ForeignKey(Medio)

class Correspondiete_a(models.Model):
  tema = models.ForeignKey(Tema)
  area = models.ForeignKey(Area)

class Declarada_por(models.Model):
  nota = models.ForeignKey(Nota)
  medio = models.ForeignKey(Medio)
  evaluacion = models.CharField(max_length=1)
def __unicode__(self):
 	return self.evaluacion	

class Derivado_de(models.Model):
  subtema = models.ForeignKey(Subtema)
  Tema = models.ForeignKey(Tema)

class Escrita_por(models.Model):
	autor = models.ForeignKey(Autor)
	nota = models.ForeignKey(Nota)	

class Publicada_en(models.Model):
 nota = models.ForeignKey(Nota)
 medio = models.ForeignKey(Medio)
 vinculo = models.CharField(max_length=100)
 seccion = models.CharField(max_length=30)

 def __unicode__(self):
  return self.seccion

class Trata_de(models.Model):
 nota = models.ForeignKey(Nota)
 subtema = models.ForeignKey(Subtema)	
