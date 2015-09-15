# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
from django.conf import settings


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('CineAltiro', '0022_voto'),
    ]

    operations = [
        migrations.CreateModel(
            name='Profile',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('nombre', models.CharField(default=b'', max_length=200)),
                ('apellido', models.CharField(default=b'', max_length=200)),
                ('categoria', models.ForeignKey(to='CineAltiro.Categoria')),
                ('id_usuario', models.ForeignKey(to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.RemoveField(
            model_name='categoria_usuario',
            name='id_categoria',
        ),
        migrations.DeleteModel(
            name='Categoria_Usuario',
        ),
    ]
