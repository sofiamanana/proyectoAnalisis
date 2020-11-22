
from django.urls import path, include
from . import views

urlpatterns = [
    path('register/',views.register, name='register'),
    path('login/',views.loginwa, name="login"),
    path('home/',views.home, name='home'),
    path('report/',views.s_reporte, name='s_reporte'),
    path('logout/',views.logoutUser,name="logout"),
    path('fiscalizador/', views.v_reporte, name='v_reporte'),
    
]