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

class Cine(models.Model):

	nombre = models.CharField(max_length = 100, default = '')
	direccion = models.CharField(max_length = 100, default = '')
	link = models.CharField(max_length = 100, default = '')
	precio = models.CharField(max_length = 50, default = '')
	imagen = models.ImageField(upload_to="imagenes/cines")
	empresa = models.CharField(max_length = 10, default='')
	def __unicode__(self):
		return self.nombre


class Pelicula(models.Model):
    
    titulo = models.CharField(max_length=200, default= '')
    subtitulo = models.CharField(max_length=200, default='')
    categoria = models.ForeignKey(Categoria)
    sinopsis = models.TextField(max_length = 10000, default = '')
    detalles = 	models.TextField(max_length = 10000, default = '')
    fecha_publicacion = models.DateField('publicacion de la pelicula') 
    imagen = models.ImageField(upload_to="imagenes/peliculas")
    cines = models.ManyToManyField(Cine)
    calificacion = models.IntegerField(default= -1)
    cantidad_comentarios = models.IntegerField(default = -1)

    def __unicode__(self):
		return self.titulo



class Comentario(models.Model):


	id_usuario = models.ForeignKey(Usuario)
	id_pelicula = models.ForeignKey(Pelicula,default=-1)
	contenido = models.TextField(max_length = 2000,default='')
	fecha_comentario = models.DateTimeField('publicacion del comentario')
	def __unicode__(self):
		return self.contenido


class Comentario_Pelicula(models.Model):

	id_pelicula = models.ForeignKey(Pelicula)
	id_comentario = models.ForeignKey(Comentario)


	