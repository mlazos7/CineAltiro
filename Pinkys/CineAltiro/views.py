from django.shortcuts import render_to_response,render
from django.http import HttpResponse,HttpResponseRedirect
from django.core.context_processors import csrf
from django.template import Context,loader, RequestContext
from CineAltiro.models import *
from .models import Categoria

# Create your views here.
def home(request):
	return render_to_response("home.html",{"main":Pelicula.objects.all()})

def base(request):
	return render_to_response("base.html")

def prueba1(request):
	return render_to_response("prueba1.html",{"pelis": Pelicula.objects.all()})