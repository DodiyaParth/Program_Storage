from django.shortcuts import render
from django.http import HttpResponse,HttpResponseRedirect
from django.urls import reverse
from django.utils.datastructures import MultiValueDictKeyError
from .models import Player
# Create your views here.
def form(request):
    return render(request,'PlayerReg/form.html')

def home(request):
    return render(request,'PlayerReg/home.html',{'n':range(10)})

def players(request):
    a=Player.objects.all()
    m=[]
    f=[]
    for i in a:
        if i.gender=='Male':
            m.append(i)
        else:
            f.append(i)
    return render(request,'PlayerReg/players.html',{'m':m,'f':f})

def response(request):
    q=Player()
    q.name=request.POST['name']
    q.age=request.POST['age']
    q.email=request.POST['email']
    q.gender=request.POST['gender']
    q.mobile_no=request.POST['mobile']
    q.experience=request.POST['experience']
    q.position=request.POST['position']
    q.save()
    return render(request,'PlayerReg/response.html')

def reshome(request):
    return HttpResponseRedirect(reverse('home'))