from django.db import models

# Create your models here.

class File(models.Model):
    name=models.CharField(max_length=500)
    filepath=models.FileField(upload_to='files/',null=True, verbose_name="")

    def __str__(self):
        return self.name + ": " + str(self.filepath)

class Reportador(models.Model):
    name=models.CharField(max_length=100)
    clave=models.CharField(max_length=100)



