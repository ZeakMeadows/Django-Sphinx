from django.urls import path, include
from . import views


urlpatterns = [
    
    path('', views.about, name="about"),
    path('Home/', views.about, name="about"),
    path('Portfolio/', views.portfolio, name="portfolio"),
    path('Contact/', views.contact, name="contact"),

]