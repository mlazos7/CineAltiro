from django.db import models
from geoposition.fields import GeopositionField



class Categoria(models.Model):

	nombre 			= models.CharField(max_length=200,default='')


	def __unicode__(self):
		return self.nombre


class Categoria_Usuario(models.Model):

	
	id_categoria = models.ForeignKey(Categoria)





class Cine(models.Model):

	nombre 			= models.CharField(max_length = 100, default = '')
	direccion 		= models.CharField(max_length = 100, default = '')
	link 			= models.CharField(max_length = 100, default = '')
	precio 			= models.CharField(max_length = 50, default = '')
	imagen 			= models.ImageField(upload_to="imagenes/cines")
	empresa 		= models.CharField(max_length = 10, default='')
	ciudad 			= models.CharField(max_length = 20, default='')
	comuna			= models.CharField(max_length = 20, default='')
	contacto		= models.CharField(max_length = 50, default='')


	def __unicode__(self):
		return self.nombre



class Location(models.Model):
	nombre 			= models.CharField(max_length=100)
	cine   			= models.ForeignKey(Cine)
	position 		= GeopositionField()

	def __unicode__(self):
		return self.nombre



class Pelicula(models.Model):
    
    titulo 				= models.CharField(max_length=200, default= '')
    subtitulo 			= models.CharField(max_length=200, default='')
    categoria 			= models.ForeignKey(Categoria)
    sinopsis 			= models.TextField(max_length = 10000, default = '')
    detalles 			= models.TextField(max_length = 10000, default = '')
    elenco 			    = models.CharField(max_length = 10000, default = '')
    director 			= models.CharField(max_length = 10000, default = '')
    estreno 			= models.DateField('fecha de estreno de la pelicula',default ='2015-01-01')
    fecha_publicacion 	= models.DateField('publicacion de la pelicula') 
    imagen 				= models.ImageField(upload_to="imagenes/peliculas")
    trailer				= models.CharField(max_length=200,default='')
    cines 				= models.ManyToManyField(Cine)
    calificacion 		= models.IntegerField(default= -1)
    cantidad_comentarios= models.IntegerField(default = -1)

    def __unicode__(self):
		return self.titulo



class Comentario(models.Model):


	id_pelicula 		= models.ForeignKey(Pelicula,default=-1)
	contenido 			= models.TextField(max_length = 2000,default='')
	fecha_comentario 	= models.DateTimeField('publicacion del comentario')
	def __unicode__(self):
		return self.contenido


class Comentario_Pelicula(models.Model):

	id_pelicula 		= models.ForeignKey(Pelicula)
	id_comentario 		= models.ForeignKey(Comentario)


class Horario(models.Model):
	horario = models.CharField(max_length = 10,default='00:00')
	def __unicode__(self):
		return self.horario



class ShowTime(models.Model):
 	cines 		= models.ForeignKey(Cine)
 	peliculas 	= models.ForeignKey(Pelicula)
 	horarios 	= models.ManyToManyField(Horario)
 	tipo 		= models.CharField(max_length = 2000,default='')
 	date 		= models.DateField('Fecha funcion')





