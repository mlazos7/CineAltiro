from django.contrib import admin

# Register your models here.


from CineAltiro.models import Categoria,Comentario,Usuario,Pelicula,Cine,Cine_Pelicula

admin.site.register(Comentario)
admin.site.register(Categoria) 
admin.site.register(Usuario)
admin.site.register(Pelicula) 
admin.site.register(Cine)
admin.site.register(Cine_Pelicula) 

class UsuarioAdmin(admin.ModelAdmin):
	list_display = ('nombre,nick,status')