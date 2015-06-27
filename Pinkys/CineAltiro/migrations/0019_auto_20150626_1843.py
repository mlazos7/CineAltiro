# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import geoposition.fields


class Migration(migrations.Migration):

    dependencies = [
        ('CineAltiro', '0018_pointofinterest'),
    ]

    operations = [
        migrations.CreateModel(
            name='Location',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('nombre', models.CharField(max_length=100)),
                ('position', geoposition.fields.GeopositionField(max_length=42)),
                ('cine', models.ForeignKey(to='CineAltiro.Cine')),
            ],
        ),
        migrations.DeleteModel(
            name='PointOFInterest',
        ),
    ]
