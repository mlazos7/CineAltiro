# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('CineAltiro', '0019_auto_20150626_1843'),
    ]

    operations = [
        migrations.AddField(
            model_name='cine',
            name='contacto',
            field=models.CharField(default=b'', max_length=20),
        ),
    ]
