from django.shortcuts import render, redirect
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from django.contrib import messages
from django.contrib.auth import authenticate, login, logout

# Create your views here.

def loginwa(request):
    '''
    if request.user.is_authenticated:
        return redirect('home')

    else:
    '''
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

def home(request):
    return render(request,'api/home.html')

   
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
