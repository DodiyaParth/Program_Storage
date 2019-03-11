from django.contrib import admin
from django.urls import path,include
from . import views
urlpatterns = [
    path('',views.home,name='home'),
    path('form/',views.form),
    path('form/response/',views.response),
    path('form/response/home/',views.reshome),
    path('players/',views.players)
]
