from django.conf.urls import url, include
from aplicaion.views import *
from django.urls import path, include

urlpatterns = [
    path('', showfile, name='showfile'),
]