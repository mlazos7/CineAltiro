from django.shortcuts import render_to_response,render, get_object_or_404
from django.http import HttpResponse,HttpResponseRedirect
from django.core.context_processors import csrf
from django.template import Context,loader, RequestContext
from .models import Categoria,Pelicula,Cine
from .forms import  SignUpForm
from django.contrib.auth.models import User
from django.core.urlresolvers import reverse




def home(request):
	usuario=User.objects.all()
	return render(request,"home.html",{"pelis": Pelicula.objects.all(), "usuario":User.objects.all()})

def peliculas(request,idPel):
	dato = get_object_or_404(Pelicula, pk=idPel)
	return render(request,"peliculas.html",{"dpelis":dato})

def cines(request):
	cin = Cine.objects.all() #Capturo todos los cines
	return render(request,"cines.html",{'dicCines':cin}) 
	#Se usa la platilla indicada y le pasamos un diccionario

def lista_peliculas(request):
	pelis = Pelicula.objects.all()
	return render(request,"lista_peliculas.html",{'pelis':pelis})

def cartelera_cine(request,idCine):
	pelis = Pelicula.objects.all()
	cine = get_object_or_404(Cine,pk=idCine)
	return render(request,"cartelera_cine.html",{'cine':cine,'pelis':pelis})



