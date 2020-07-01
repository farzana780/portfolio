from django.shortcuts import render,redirect
from .models import Home
from django.http import HttpResponse

def home(request):
    all_jobs = Home.objects.all()
    return render(request, 'jobs/home.html', {'all_jobs':all_jobs})
