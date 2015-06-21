# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('CineAltiro', '0007_auto_20150620_1908'),
    ]

    operations = [
        migrations.AddField(
            model_name='pelicula',
            name='cines',
            field=models.ManyToManyField(to='CineAltiro.Cine'),
        ),
        migrations.AlterField(
            model_name='pelicula',
            name='fecha_publicacion',
            field=models.DateField(verbose_name=b'publicacion de la pelicula'),
        ),
    ]
