from django.shortcuts import render_to_response,render
from django.http import HttpResponse,HttpResponseRedirect
from django.core.context_processors import csrf
from django.template import Context,loader
from CineAltiro.models import *

# Create your views here.
def home(request):
	return render_to_response("home.html",{"main":Pelicula.objects.all()})

def base(request):
	return render_to_response("base.html")