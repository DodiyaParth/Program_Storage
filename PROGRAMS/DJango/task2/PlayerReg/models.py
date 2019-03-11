from django.db import models

# Create your models here.
class Player(models.Model):
    name=models.CharField(max_length=100)
    gender=models.CharField(max_length=6)
    age=models.IntegerField()
    mobile_no=models.IntegerField()
    email=models.CharField(max_length=30)
    position=models.CharField(max_length=100)
    experience=models.CharField(max_length=400)

    def __str__(self):
        return self.name