from django.shortcuts import render
from django.http import HttpResponse
from .tasks import add


# Create your views here.

def index(request):
    a = int(request.GET.get('a', 1))
    b = int(request.GET.get('b', 2))
    add.delay(a, b)
    return HttpResponse("Hello world")


def hello(request):
    return HttpResponse("hello")
