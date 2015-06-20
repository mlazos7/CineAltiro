#encoding:utf-8
from django.forms import ModelForm
from django import forms
from .models import Usuario


# class ContactoForm(forms.Form):
# 	mensaje			= forms.CharField(widget =forms.Textarea)
#     correo			= forms.EmailField(label ="tu correo:")

class RegistroForm(forms.ModelForm):
	class Meta:
		model = Usuario
		fields = "__all__"


