# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('CineAltiro', '0020_cine_contacto'),
    ]

    operations = [
        migrations.AlterField(
            model_name='cine',
            name='contacto',
            field=models.CharField(default=b'', max_length=50),
        ),
    ]
