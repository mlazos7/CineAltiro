# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('CineAltiro', '0006_pelicula_titulo_completo'),
    ]

    operations = [
        migrations.RenameField(
            model_name='pelicula',
            old_name='titulo_completo',
            new_name='subtitulo',
        ),
    ]
