from django.conf.urls import url, include
from aplicaion.views import *
from django.urls import path, include

urlpatterns = [
    path("", login, name='login'),
    path("subir_reporte.html", showfile, name='showfile')
]