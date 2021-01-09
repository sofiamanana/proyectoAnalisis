from django.db import models

# Create your models here.

class File(models.Model):
    name=models.CharField(max_length=500)
    filepath=models.FileField(upload_to='files/',null=True, verbose_name="")
    username=models.CharField(max_length=300)
    version=models.IntegerField(default=1)
    plan = models.IntegerField(default=1)

    def __str__(self):
        return self.name + ": " + str(self.filepath)

class Mensajes(models.Model):
    mensaje = models.CharField(max_length=1000)
    fiscalizador = models.CharField(max_length=300)

class Plan(models.Model):
    nombre = models.CharField(max_length=300)
    reportador = models.CharField(max_length=300)

    

