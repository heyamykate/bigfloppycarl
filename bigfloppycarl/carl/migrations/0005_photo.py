# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('carl', '0004_auto_20150810_1646'),
    ]

    operations = [
        migrations.CreateModel(
            name='Photo',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('title', models.CharField(max_length=200, verbose_name=b'Photo Title')),
                ('caption', models.CharField(max_length=200, verbose_name=b'Photo Caption', blank=True)),
                ('image_url', models.ImageField(upload_to=b'gallery/', verbose_name=b'Image File')),
                ('date_added', models.DateField(auto_now_add=True)),
            ],
        ),
    ]
