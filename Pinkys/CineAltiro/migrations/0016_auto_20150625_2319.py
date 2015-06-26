# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('CineAltiro', '0015_auto_20150623_0427'),
    ]

    operations = [
        migrations.AddField(
            model_name='pelicula',
            name='director',
            field=models.CharField(default=b'', max_length=10000),
        ),
        migrations.AddField(
            model_name='pelicula',
            name='elenco',
            field=models.CharField(default=b'', max_length=10000),
        ),
        migrations.AddField(
            model_name='pelicula',
            name='estreno',
            field=models.DateField(default=b'2015-01-01', verbose_name=b'fecha de estreno de la pelicula'),
        ),
    ]
