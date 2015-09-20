#encoding:utf-8
from django import forms
from django.forms import ModelForm
from django.contrib.auth.models import User
from .models import Pelicula, Profile
from django_bootstrap_typeahead.fields import *





class SignUpForm(ModelForm):
	class Meta:
		model = User
		fields = ['username','password','email','first_name','last_name']
		widgets = {'password':forms.PasswordInput(),
		}

class PerfilForm(ModelForm):
    class Meta:
        model = Profile
        fields = ['id_2','nombre','apellido','categoria']

#Para el Typeahead

def build_thing(value):
    created = Thing.objects.get_or_create(name=value)
    return created


class TestForm(forms.Form):
    typeahead = TypeaheadField(
        queryset=Pelicula.objects.all(),
        builder=build_thing,
        required=False
    )

