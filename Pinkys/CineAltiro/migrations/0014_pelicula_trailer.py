# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('CineAltiro', '0013_remove_showtime_hola'),
    ]

    operations = [
        migrations.AddField(
            model_name='pelicula',
            name='trailer',
            field=models.URLField(default=b''),
        ),
    ]
