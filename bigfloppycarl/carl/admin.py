from django.contrib import admin

from .models import BucketListItem
from .models import Video
from .models import Story
from .models import Photo

# Register your models here.

class ItemAdmin(admin.ModelAdmin):
    model = BucketListItem
    list_display = ('title',)

admin.site.register(BucketListItem, ItemAdmin)

class VideoAdmin(admin.ModelAdmin):
    model = Video
    list_display = ('title',)

admin.site.register(Video, VideoAdmin)

class StoryAdmin(admin.ModelAdmin):
    model = Story
    list_display = ('title', 'submitter', 'date_added',)

admin.site.register(Story, StoryAdmin)

class PhotoAdmin(admin.ModelAdmin):
    model = Photo
    list_display = ('title', 'caption', 'date_added',)

admin.site.register(Photo, PhotoAdmin)
