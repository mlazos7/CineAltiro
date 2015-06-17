# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Categoria',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('nombre', models.CharField(default=b'', max_length=200)),
            ],
        ),
        migrations.CreateModel(
            name='Categoria_Pelicula',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('id_categoria', models.ForeignKey(to='CineAltiro.Categoria')),
            ],
        ),
        migrations.CreateModel(
            name='Categoria_Usuario',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('id_categoria', models.ForeignKey(to='CineAltiro.Categoria')),
            ],
        ),
        migrations.CreateModel(
            name='Cine',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('nombre', models.CharField(default=b'', max_length=100)),
                ('direccion', models.CharField(default=b'', max_length=100)),
                ('link', models.CharField(default=b'', max_length=100)),
                ('precio', models.CharField(default=b'', max_length=50)),
                ('imagen', models.CharField(default=b'', max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='Cine_Pelicula',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('funciones', models.CharField(default=b'', max_length=100)),
                ('id_cine', models.ForeignKey(to='CineAltiro.Cine')),
            ],
        ),
        migrations.CreateModel(
            name='Comentario',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('contenido', models.TextField(default=b'', max_length=2000)),
                ('fecha_comentario', models.DateTimeField(verbose_name=b'publicacion del comentario')),
            ],
        ),
        migrations.CreateModel(
            name='Comentario_Pelicula',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('id_comentario', models.ForeignKey(to='CineAltiro.Comentario')),
            ],
        ),
        migrations.CreateModel(
            name='Pelicula',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('titulo', models.CharField(default=b'', max_length=200)),
                ('calificacion', models.IntegerField(default=-1)),
                ('cantidad_comentarios', models.IntegerField(default=-1)),
                ('resumen', models.TextField(default=b'', max_length=2000)),
                ('detalles', models.TextField(default=b'', max_length=2000)),
                ('fecha_publicacion', models.DateTimeField(verbose_name=b'publicacion de la pelicula')),
                ('imagen', models.IntegerField(default=-1)),
            ],
        ),
        migrations.CreateModel(
            name='Usuario',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('nombre', models.CharField(default=b'', max_length=100)),
                ('apellido', models.CharField(default=b'', max_length=100)),
                ('nick', models.CharField(default=b'', max_length=200)),
                ('email', models.EmailField(default=b'email@', max_length=200)),
                ('password', models.CharField(default=b'', max_length=100)),
                ('direccion', models.CharField(default=b'', max_length=200)),
                ('fecha_registro', models.DateTimeField(verbose_name=b'fecha de registro ')),
                ('status', models.BooleanField(default=b'')),
            ],
        ),
        migrations.AddField(
            model_name='comentario_pelicula',
            name='id_pelicula',
            field=models.ForeignKey(to='CineAltiro.Pelicula'),
        ),
        migrations.AddField(
            model_name='comentario',
            name='id_usuario',
            field=models.ForeignKey(to='CineAltiro.Usuario'),
        ),
        migrations.AddField(
            model_name='cine_pelicula',
            name='id_pelicula',
            field=models.ForeignKey(to='CineAltiro.Pelicula'),
        ),
        migrations.AddField(
            model_name='categoria_usuario',
            name='id_usuario',
            field=models.ForeignKey(to='CineAltiro.Usuario'),
        ),
        migrations.AddField(
            model_name='categoria_pelicula',
            name='id_pelicula',
            field=models.ForeignKey(to='CineAltiro.Pelicula'),
        ),
    ]
