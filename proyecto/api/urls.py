
from django.urls import path, include
from . import views

urlpatterns = [
    path('register/',views.register, name='register'),
    path('login/',views.loginwa, name="login"),
    path('home/',views.home, name='home'),
    path('report/',views.s_reporte, name='s_reporte'),
    path('logout/',views.logoutUser,name="logout"),
    path('fiscalizador/', views.v_reporte, name='v_reporte'),
    path('modificar/', views.modificar, name='modificar'),
    path('enviar_m/', views.env_mensaje, name='enviar_m'),
    path('ver_m/', views.ver_mensajes, name='ver_m'), 
    path('agregar_p/', views.agregar_plan, name="agregar_p"),   
    
]