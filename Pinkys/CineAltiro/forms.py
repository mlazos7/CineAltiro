#encoding:utf-8
from django import forms
from django.forms import ModelForm
from django.contrib.auth.models import User
from .models import Usuario



# class ContactoForm(forms.Form):
# 	mensaje			= forms.CharField(widget =forms.Textarea)
#     correo			= forms.EmailField(label ="tu correo:")

class RegistroForm(forms.ModelForm):
	class Meta:
		model = Usuario
		fields = "__all__"


class SignUpForm(ModelForm):
	class Meta:
		model = User
		fields = ['username','password','email','first_name','last_name']
		widgets = {'password':forms.PasswordInput(),
		}