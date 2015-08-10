from django.shortcuts import render

from rest_framework import viewsets

from .serializers import ItemSerializer
from .serializers import VideoSerializer
from .serializers import StorySerializer
from .serializers import PhotoSerializer

from .models import BucketListItem
from .models import Video
from .models import Story
from .models import Photo

# Create your views here.

class ItemViewSet(viewsets.ModelViewSet):
    queryset = BucketListItem.objects.all().order_by('-date_added')
    serializer_class = ItemSerializer

class VideoViewSet(viewsets.ModelViewSet):
    queryset = Video.objects.all().order_by('-title')
    serializer_class = VideoSerializer

class StoryViewSet(viewsets.ModelViewSet):
    queryset = Story.objects.all().order_by('-date_added')
    serializer_class = StorySerializer

class PhotoViewSet(viewsets.ModelViewSet):
    queryset = Photo.objects.all().order_by('-id')
    serializer_class = PhotoSerializer
