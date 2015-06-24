# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('CineAltiro', '0014_pelicula_trailer'),
    ]

    operations = [
        migrations.AlterField(
            model_name='pelicula',
            name='trailer',
            field=models.CharField(default=b'', max_length=200),
        ),
    ]
