# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('CineAltiro', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='pelicula',
            old_name='resumen',
            new_name='sinopsis',
        ),
        migrations.AlterField(
            model_name='cine',
            name='imagen',
            field=models.ImageField(upload_to=b'imagenes'),
        ),
    ]
