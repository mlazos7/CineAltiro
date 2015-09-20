# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('CineAltiro', '0024_auto_20150919_1541'),
    ]

    operations = [
        migrations.AlterField(
            model_name='profile',
            name='id_2',
            field=models.IntegerField(default=0, unique=True),
        ),
    ]
