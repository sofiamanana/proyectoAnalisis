from django.conf.urls import url, include
from aplicaion.views import *
from django.urls import path, include
from rest_framework import routers
from .views import UserViewSet

router = routers.DefaultRouter()
router.register('users',UserViewSet)

urlpatterns = [
    path("", include(router.urls)),
    path("subir_reporte.html", showfile, name='showfile')
]