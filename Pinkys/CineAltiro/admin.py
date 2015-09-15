from django.contrib import admin

# Register your models here.


from CineAltiro.models import Categoria,Comentario,Pelicula,Cine,ShowTime,Horario,Location,Voto,Profile
admin.site.register(Comentario)
admin.site.register(Categoria) 
admin.site.register(Pelicula) 
admin.site.register(Cine)
admin.site.register(Location)
admin.site.register(Horario)
admin.site.register(Voto)
admin.site.register(Profile)

class UsuarioAdmin(admin.ModelAdmin):

	list_display = ('nombre,nick,status')


class ShowTimeAdmin(admin.ModelAdmin):
	fields = ['cines','peliculas','horarios','tipo','date']
	list_display = ('cines','peliculas','tipo','date')

admin.site.register(ShowTime,ShowTimeAdmin) 



