# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('CineAltiro', '0004_auto_20150619_1707'),
    ]

    operations = [
        migrations.AddField(
            model_name='comentario',
            name='id_pelicula',
            field=models.ForeignKey(default=-1, to='CineAltiro.Pelicula'),
        ),
    ]
