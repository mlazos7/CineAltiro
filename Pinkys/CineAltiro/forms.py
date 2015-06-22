#encoding:utf-8
from django import forms
from django.forms import ModelForm
from django.contrib.auth.models import User





class SignUpForm(ModelForm):
	class Meta:
		model = User
		fields = ['username','password','email','first_name','last_name']
		widgets = {'password':forms.PasswordInput(),
		}