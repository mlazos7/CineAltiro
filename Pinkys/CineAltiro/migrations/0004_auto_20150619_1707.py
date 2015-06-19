# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('CineAltiro', '0003_auto_20150619_1548'),
    ]

    operations = [
        migrations.AlterField(
            model_name='pelicula',
            name='detalles',
            field=models.TextField(default=b'', max_length=10000),
        ),
        migrations.AlterField(
            model_name='pelicula',
            name='sinopsis',
            field=models.TextField(default=b'', max_length=10000),
        ),
    ]
