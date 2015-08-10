# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('carl', '0002_video'),
    ]

    operations = [
        migrations.CreateModel(
            name='Story',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('submitter', models.CharField(max_length=200, verbose_name=b'Submitter')),
                ('video_upload', models.FileField(upload_to=b'stories/', verbose_name=b'Video File')),
                ('title', models.CharField(max_length=200, verbose_name=b'Video Title')),
                ('description', models.TextField(verbose_name=b'Video Description', blank=True)),
                ('date_added', models.DateField(auto_now_add=True)),
            ],
        ),
    ]
