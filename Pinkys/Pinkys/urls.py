"""Pinkys URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.8/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Add an import:  from blog import urls as blog_urls
    2. Add a URL to urlpatterns:  url(r'^blog/', include(blog_urls))

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
from django.conf.urls import include, url
from django.contrib import admin
from django.conf import settings
from django.conf.urls.static import static


urlpatterns = [
    url(r'^admin/', include(admin.site.urls)),
    url(r'^home/$','CineAltiro.views.home'),
    url(r'^pelicula/(?P<idPel>\d+)$','CineAltiro.views.peliculas'),
    url(r'^cines/$','CineAltiro.views.cines'),    
    url(r'^estrellitas/$','CineAltiro.views.estrellitas'),
    url(r'^peliculas/$','CineAltiro.views.lista_peliculas'),
    url(r'^cartelera/cine/(?P<idCine>\d+)$','CineAltiro.views.cartelera_cine'),
    url(r'^accounts/', include('registration.urls')),
    url(r'^quienes-somos/$','CineAltiro.views.contacto'),

]


if settings.DEBUG:
	urlpatterns +=static(settings.STATIC_URL,document_root=settings.STATIC_ROOT)
	urlpatterns +=static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)