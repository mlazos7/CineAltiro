# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('CineAltiro', '0005_comentario_id_pelicula'),
    ]

    operations = [
        migrations.AddField(
            model_name='pelicula',
            name='titulo_completo',
            field=models.CharField(default=b'', max_length=200),
        ),
    ]
