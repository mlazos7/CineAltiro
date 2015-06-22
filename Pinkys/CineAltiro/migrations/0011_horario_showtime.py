# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('CineAltiro', '0010_auto_20150622_1633'),
    ]

    operations = [
        migrations.CreateModel(
            name='Horario',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('horario', models.TimeField()),
            ],
        ),
        migrations.CreateModel(
            name='ShowTime',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('hola', models.CharField(default=b'', max_length=2000)),
                ('tipo', models.CharField(default=b'', max_length=2000)),
                ('date', models.DateField(verbose_name=b'Fecha funcion')),
                ('cines', models.ForeignKey(to='CineAltiro.Cine')),
                ('horarios', models.ManyToManyField(to='CineAltiro.Horario')),
                ('peliculas', models.ForeignKey(to='CineAltiro.Pelicula')),
            ],
        ),
    ]
