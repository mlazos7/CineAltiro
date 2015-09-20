# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('CineAltiro', '0023_auto_20150915_1746'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='profile',
            name='id_usuario',
        ),
        migrations.AddField(
            model_name='profile',
            name='id_2',
            field=models.IntegerField(default=0),
        ),
    ]
