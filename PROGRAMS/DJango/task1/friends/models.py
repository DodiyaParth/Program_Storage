from django.db import models

# Create your models here.

class user(models.Model):
    userid=models.IntegerField()
    username=models.CharField(max_length=200)
    latitude=models.FloatField(default=0)
    longitude= models.FloatField(default=0)

