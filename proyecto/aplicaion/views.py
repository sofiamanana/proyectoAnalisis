from django.shortcuts import render
from .models import File, Reportador
from .forms import FileForm
from django.http import HttpResponse
from django.contrib.auth import authenticate
from django.contrib.auth.forms import AuthenticationForm, UserCreationForm
from django.contrib.auth import login as do_login
from django.contrib import auth
from rest_framework import viewsets
from django.contrib.auth.models import User
from .serializers import UserSerializer

# Create your views here.

class UserViewSet(viewsets.ModelViewSet):
    queryset = User.objects.all()
    serializer_class = UserSerializer

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
    
    form = UserCreationForm()
    '''
    if request.method == 'POST':
        form = UserCreationForm(request.POST)
        if form.is_valid():
            form.save()
            user = form.cleaned_data.get('username')
            messages.success(request, 'Account was created for ' + user)
            return redirect('/')
    '''
    context = {'form': form}

    return render(request, 'aplicaion/index.html',context)  