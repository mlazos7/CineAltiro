from django.contrib import admin

# Register your models here.


from CineAltiro.models import Categoria,Comentario,Usuario,Pelicula,Cine

admin.site.register(Comentario)
admin.site.register(Categoria) 
admin.site.register(Usuario)
admin.site.register(Pelicula) 
admin.site.register(Cine) 

class UsuarioAdmin(admin.ModelAdmin):
	list_display = ('nombre,nick,status')