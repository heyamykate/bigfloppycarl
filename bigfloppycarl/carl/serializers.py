from rest_framework import serializers

from .models import BucketListItem
from .models import Video
from .models import Story
from .models import Photo

class ItemSerializer(serializers.ModelSerializer):
    class Meta:
        model = BucketListItem
        fields = ('hero_image', 'title', 'description', 'location', 'venue', 'link', 'completed', 'date_added', 'date_completed')

class VideoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Video
        fields = ('title', 'description', 'video_url', 'date_added')

class StorySerializer(serializers.ModelSerializer):
    class Meta:
        model = Story
        fields = ('title', 'description', 'video_upload', 'submitter', 'date_added')

class PhotoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Photo
        fields = ('id', 'title', 'caption', 'image_url')
