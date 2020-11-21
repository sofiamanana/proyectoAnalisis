from django.conf.urls import url, include
from aplicaion.views import *
from django.urls import path, include
from rest_framework import routers
from .views import UserViewSet
from rest_framework.authtoken.views import obtain_auth_token
from . import views

router = routers.DefaultRouter()
router.register('users',UserViewSet)

urlpatterns = [
    #path("", include(router.urls)),
    path("login/", views.showfile, name='showfile'),
    path('', views.login, name="login"),
    
    
]