# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='BucketListItem',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('hero_image', models.ImageField(upload_to=b'bucket_list/', verbose_name=b'Hero Image', blank=True)),
                ('title', models.CharField(max_length=200, verbose_name=b'Item Title')),
                ('description', models.TextField(verbose_name=b'Item Description', blank=True)),
                ('location', models.CharField(max_length=200, verbose_name=b'Location', blank=True)),
                ('venue', models.CharField(help_text=b"If it's at a venue/facility, name it here.", max_length=200, verbose_name=b'Venue', blank=True)),
                ('link', models.CharField(help_text=b'If the venue/location has a website, put it here.', max_length=200, verbose_name=b'Link URL', blank=True)),
                ('completed', models.BooleanField(default=False, verbose_name=b'Completed?')),
                ('date_added', models.DateField(auto_now_add=True)),
                ('date_completed', models.DateField(auto_now=True)),
            ],
        ),
    ]
