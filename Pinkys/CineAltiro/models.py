from django.db import models

# Create your models here.

class Categoria(models.Model):

	nombre = models.CharField(max_length=200,default='')
	def __unicode__(self):
		return self.nombre


class Usuario(models.Model):
    
    nombre = models.CharField(max_length=100,default = '')
    apellido = models.CharField(max_length=100,default = '')
    nick = models.CharField(max_length=200,default = '')
    email = models.EmailField(max_length=200,default = 'email@')
    password =  models.CharField(max_length=100,default = '')
    direccion = models.CharField(max_length=200,default = '')
    fecha_registro = models.DateTimeField('fecha de registro ')
    status = models.BooleanField(default = '')


    def __unicode__(self):
		return self.nombre


class Categoria_Usuario(models.Model):

	id_usuario = models.ForeignKey(Usuario)
	id_categoria = models.ForeignKey(Categoria)



class Pelicula(models.Model):
    
    titulo = models.CharField(max_length=200, default= '')
    calificacion = models.IntegerField(default= -1)
    cantidad_comentarios = models.IntegerField(default = -1)
    sinopsis = models.TextField(max_length = 10000, default = '')
    detalles = 	models.TextField(max_length = 10000, default = '')
    fecha_publicacion = models.DateTimeField('publicacion de la pelicula') 
    imagen = models.ImageField(upload_to="imagenes/peliculas")
    categoria = models.ForeignKey(Categoria)


    def __unicode__(self):
		return self.titulo



class Comentario(models.Model):


	id_usuario = models.ForeignKey(Usuario)
	contenido = models.TextField(max_length = 2000,default='')
	fecha_comentario = models.DateTimeField('publicacion del comentario')
	def __unicode__(self):
		return self.contenido


class Comentario_Pelicula(models.Model):

	id_pelicula = models.ForeignKey(Pelicula)
	id_comentario = models.ForeignKey(Comentario)



class Cine(models.Model):

	nombre = models.CharField(max_length = 100, default = '')
	direccion = models.CharField(max_length = 100, default = '')
	link = models.CharField(max_length = 100, default = '')
	precio = models.CharField(max_length = 50, default = '')
	imagen = models.ImageField(upload_to="imagenes/cines")
	def __unicode__(self):
		return self.nombre


class Cine_Pelicula(models.Model):

	id_pelicula =  models.ForeignKey(Pelicula)
	id_cine	= models.ForeignKey(Cine)
	funciones = models.CharField(max_length= 100, default = '')