# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('CineAltiro', '0016_auto_20150625_2319'),
    ]

    operations = [
        migrations.AddField(
            model_name='cine',
            name='ciudad',
            field=models.CharField(default=b'', max_length=20),
        ),
        migrations.AddField(
            model_name='cine',
            name='comuna',
            field=models.CharField(default=b'', max_length=20),
        ),
    ]
