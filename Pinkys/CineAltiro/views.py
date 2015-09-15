from django.shortcuts import render_to_response,render, get_object_or_404
from django.http import HttpResponse,HttpResponseRedirect
from django.core.context_processors import csrf
from django.template import Context,loader, RequestContext
from .models import Categoria,Pelicula,Cine,ShowTime,Location,Voto,Profile
from .forms import  SignUpForm
from django.contrib.auth.models import User
from django.core.urlresolvers import reverse
import json



def home(request):
	usuario=User.objects.all()
	return render(request,"home.html",{"pelis": Pelicula.objects.all(), "usuario":User.objects.all()})

def peliculas(request,idPel):

	showtimes = ShowTime.objects.all()
	dato = get_object_or_404(Pelicula, pk=idPel)
	return render(request,"peliculas.html",{"dpelis":dato,"dshowtimes":showtimes})

def cines(request):
	cin = Cine.objects.all() #Capturo todos los cines
	return render(request,"cines.html",{'dicCines':cin}) 
	#Se usa la platilla indicada y le pasamos un diccionario

def lista_peliculas(request):
	pelis = Pelicula.objects.all()
	return render(request,"lista_peliculas.html",{'pelis':pelis})

def cartelera_cine(request,idCine):
	geo = Location.objects.all()
	pelis = Pelicula.objects.all()
	cine = get_object_or_404(Cine,pk=idCine)
	return render(request,"cartelera_cine.html",{'dcine':cine,'pelis':pelis,'dgeo':geo})

def estrellitas(request):
	nota = int(request.POST.get("nota", ""))	
	pelicula= int(request.POST.get("id", ""))
	pelicula_real=get_object_or_404(Pelicula, pk=pelicula)
	dato = get_object_or_404(Pelicula, pk=pelicula)
	dato.calificacion = (dato.calificacion+nota)/2
	usuario= request.user
	try:
		num = get_object_or_404(Voto, usuario=usuario.id, pelicula=pelicula)
	except:
		num = 0
	if (num != 0):
		print ""
	else: 
		rela= Voto(pelicula = pelicula_real, usuario= usuario, voto=nota)	
		dato.save()
		rela.save()
	response_data = {}
	try:
		response_data['result']= 'funciono'
		response_data['nota']=num
	except:
		response_data['result']='we lost'
		response_data['message']='we fuken lost'
	return HttpResponse(json.dumps(response_data),content_type="application/json")


def contacto(request):
	return render(request,"contacto.html")

def perfil(request):
	perfil = Profile.objects.all()
	
	return render(request,"perfil.html",{'dperfil':perfil})
