# Generated by Django 3.1.3 on 2021-01-08 22:30

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0006_plan'),
    ]

    operations = [
        migrations.CreateModel(
            name='Plan_rep',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('id_plan', models.IntegerField(default=0)),
            ],
        ),
    ]