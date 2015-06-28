# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
from django.conf import settings


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('CineAltiro', '0021_auto_20150626_2151'),
    ]

    operations = [
        migrations.CreateModel(
            name='Voto',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('voto', models.IntegerField(default=0)),
                ('pelicula', models.ForeignKey(to='CineAltiro.Pelicula')),
                ('usuario', models.ForeignKey(to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]
