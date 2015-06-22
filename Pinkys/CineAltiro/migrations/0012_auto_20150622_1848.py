# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('CineAltiro', '0011_horario_showtime'),
    ]

    operations = [
        migrations.AlterField(
            model_name='horario',
            name='horario',
            field=models.CharField(default=b'00:00', max_length=10),
        ),
    ]
