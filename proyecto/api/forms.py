from django import forms
from .models import File, Plan, Mensajes

class FileForm(forms.ModelForm):
    class Meta:
        model=File
        fields=["name","filepath","username","plan"]

class FileForm2(forms.ModelForm):
    class Meta:
        model=File
        fields=['filepath']
    
class FormMensaje(forms.ModelForm):
    class Meta:
        model=Mensajes
        fields=['fiscalizador','mensaje']

class FormPlan(forms.ModelForm):
    class Meta:
        model=Plan
        fields=['nombre','reportador']

