# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('CineAltiro', '0009_auto_20150621_0224'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='categoria_usuario',
            name='id_usuario',
        ),
        migrations.RemoveField(
            model_name='comentario',
            name='id_usuario',
        ),
        migrations.DeleteModel(
            name='Usuario',
        ),
    ]
