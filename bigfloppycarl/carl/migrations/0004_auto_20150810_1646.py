# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('carl', '0003_story'),
    ]

    operations = [
        migrations.AlterField(
            model_name='story',
            name='video_upload',
            field=models.FileField(upload_to=b'stories/', verbose_name=b'Video File', blank=True),
        ),
    ]
