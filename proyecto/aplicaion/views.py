from django.shortcuts import render
from .models import File, Reportador
from .forms import FileForm
from django.http import HttpResponse
from django.contrib.auth import authenticate
from django.contrib.auth.forms import AuthenticationForm
from django.contrib.auth import login as do_login
from django.contrib import auth

# Create your views here.

def showfile(request):
    lastfile=File.objects.last()
    filepath=lastfile.filepath
    filename=lastfile.name

    form=FileForm(request.POST or None, request.FILES or None)
    if form.is_valid():
        form.save()

    context={'filepath': filepath,
            'form': form,
            'filename': filename
            }
    return render(request, 'aplicaion/subir_reporte.html', context)

def login(request):
    if request.method == 'POST':
        username=request.POST['username']
        password=reques.POST['password']

        x=auth.authenticate(username=username,password=password)
        
        if x is None:
            return redirect('index')
        else:
            return redirect('/subir_reporte')

    else:
        return render(request, 'aplicaion/index.html')

def logout(request):
    return redirect('')    