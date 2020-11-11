from django.shortcuts import render
from .models import File
from .forms import FileForm
from django.http import HttpResponse

# Create your views here.
'''
def index(request):
    return HttpResponse("<h1>Holi</h1>")
'''
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
    return render(request, 'aplicaion/index.html', context)
