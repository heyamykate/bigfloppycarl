# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('carl', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Video',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('title', models.CharField(max_length=200, verbose_name=b'Video Title')),
                ('description', models.TextField(verbose_name=b'Video Description', blank=True)),
                ('video_url', models.CharField(max_length=200, verbose_name=b'Video URL', blank=True)),
                ('date_added', models.DateField(auto_now_add=True)),
            ],
        ),
    ]
