from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.



def about(request):
    
    return render(request, "about.html")

def portfolio(request):
    
    return render(request, "portfolio.html")
    
def contact(request):
    
    return render(request, "contact.html")    