from django.shortcuts import render_to_response,render, get_object_or_404
from django.http import HttpResponse,HttpResponseRedirect
from django.core.context_processors import csrf
from django.template import Context,loader, RequestContext
from .models import Categoria,Pelicula,Cine,Cine_Pelicula
from .forms import RegistroForm 


def home(request):
	return render_to_response("home.html",{"main":Pelicula.objects.all()})

def base(request):
	return render_to_response("base.html")

def prueba1(request):
	return render_to_response("prueba1.html",{"pelis": Pelicula.objects.all()})

def peliculas(request,idPel):
	dato = get_object_or_404(Pelicula, pk=idPel)
	return render_to_response("peliculas.html",{"dpelis":dato})

def cines(request):
	cin = Cine.objects.all() #Capturo todos los cines
	return render_to_response("cines.html",{'dicCines':cin}) 
	#Se usa la platilla indicada y le pasamos un diccionario

def cinespel(request):
	variable = Cine_Pelicula.objects.all()
	return render_to_response("cinesPel.html",{'dcinespel':variable,})

def registro(request):
	formulario = RegistroForm(request.POST or None)
	if formulario.is_valid():
		new_Usuario = formulario.save(commit=False)
		new_Usuario.save()
	context = {"formulario":formulario}
	template = "registro.html"
	return render(request,template,context)


