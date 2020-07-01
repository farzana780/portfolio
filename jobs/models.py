from django.db import models


class Home(models.Model):
    image = models.ImageField(upload_to='image/')
    summary = models.CharField(max_length=300)


class Details(models.Model):
    image = models.ImageField(upload_to='image/')
    title = models.CharField(max_length=200)
    date = models.DateField()
    description = models.CharField(max_length=300)
