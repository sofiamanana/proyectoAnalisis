from django.shortcuts import render, redirect
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from django.contrib import messages
from django.contrib.auth import authenticate, login, logout
from .models import File
from .forms import *
from .decorators import *
from django.views.decorators.csrf import ensure_csrf_cookie
from django_globals import globals 

# Create your views here.

@unauthenticated_user
def loginwa(request):
    
    form = AuthenticationForm()
    
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')

        user = authenticate(request, username=username, password=password)

        if user is not None:
            login(request, user)
            return redirect('home')
        else:
            messages.info(request, 'Username o Password incorrecta')
    context={'form': form}

    return render(request,'api/login.html',context)

def logoutUser(request):
	logout(request)
	return redirect('login')

def home(request):
    return render(request,'api/home.html')

@unauthenticated_user
def register(request):
    form = UserCreationForm()

    if request.method == 'POST':
        form = UserCreationForm(request.POST)
        print(form)
        if form.is_valid():
            form.save()
            user = form.cleaned_data.get('username')
            messages.success(request, 'Account was created for ' + user)

    context = {'form': form}
    return render(request, 'api/register.html', context)

@allowed_users(allowed_roles=['reportador'])
def s_reporte(request):
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
    return render(request, 'api/subir_reporte.html', context)

@allowed_users(allowed_roles=['fiscalizador'])
def v_reporte(request):
    files = File.objects.all()

    context={'files': files}
    return render(request, 'api/ver_reporte.html', context)

@allowed_users(allowed_roles=['reportador'])
def modificar(request):
    files = File.objects.all().filter(username=globals.user)

    form=FileForm(request.POST or None, request.FILES or None)
    if request.method == 'POST':
        if form.is_valid():
            form.save()

    
    
    context={'files': files,
            'form': form}
    
    return render(request, 'api/modificar.html', context)

@allowed_users(allowed_roles=['fiscalizador'])
def env_mensaje(request):
    
    form = FormMensaje(request.POST or None, request.FILES or None)
    if request.method == 'POST':
        if form.is_valid():
            form.save()

    context={'form': form}
    return render(request, 'api/enviar_m.html', context)

def ver_mensajes(request):
    mensajes = Mensajes.objects.all()
    context = {
        'mensajes': mensajes
    }

    return render(request, 'api/ver_m.html', context)

@allowed_users(allowed_roles=['fiscalizador'])
def agregar_plan(request):
    plan = Plan.objects.all()
    form = FormPlan(request.POST or None, request.FILES or None)
    if request.method == 'POST':
        if form.is_valid():
            form.save()
    
    context = {
        'plan': plan,
        'form': form
    }

    return render(request, 'api/agreg_plan.html', context)