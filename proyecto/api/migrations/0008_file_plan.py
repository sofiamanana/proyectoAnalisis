# Generated by Django 3.1.3 on 2021-01-08 22:36

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0007_plan_rep'),
    ]

    operations = [
        migrations.AddField(
            model_name='file',
            name='plan',
            field=models.IntegerField(default=1),
        ),
    ]