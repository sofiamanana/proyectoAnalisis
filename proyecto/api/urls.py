
from django.urls import path, include
from . import views

urlpatterns = [
    path('register/',views.register, name='register'),
    path('login/',views.loginwa, name="login"),
    path('home/',views.home, name='home')
    
]