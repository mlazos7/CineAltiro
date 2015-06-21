# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('CineAltiro', '0008_auto_20150620_2305'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='cine_pelicula',
            name='id_cine',
        ),
        migrations.RemoveField(
            model_name='cine_pelicula',
            name='id_pelicula',
        ),
        migrations.AddField(
            model_name='cine',
            name='empresa',
            field=models.CharField(default=b'', max_length=10),
        ),
        migrations.DeleteModel(
            name='Cine_Pelicula',
        ),
    ]
