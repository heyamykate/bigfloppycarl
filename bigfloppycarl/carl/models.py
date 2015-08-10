from django.db import models

# Create your models here.

# Bucket List Item
class BucketListItem(models.Model):

    hero_image = models.ImageField(upload_to="bucket_list/", verbose_name="Hero Image", blank=True)
    title = models.CharField(max_length=200, verbose_name="Item Title")
    description = models.TextField(verbose_name="Item Description", blank=True)

    location = models.CharField(max_length=200, blank=True, verbose_name="Location")
    venue = models.CharField(max_length=200, blank=True, verbose_name="Venue", help_text="If it's at a venue/facility, name it here.")
    link = models.CharField(max_length=200, blank=True, verbose_name="Link URL", help_text="If the venue/location has a website, put it here.")

    completed = models.BooleanField(default=False, verbose_name="Completed?", blank=True)

    date_added = models.DateField(auto_now=False, auto_now_add=True)
    date_completed = models.DateField(auto_now=True, auto_now_add=False)

    def __str__(self):
        return self.title

# Video Link
class Video(models.Model):

    title = models.CharField(max_length=200, verbose_name="Video Title")
    description = models.TextField(verbose_name="Video Description", blank=True)
    video_url = models.CharField(max_length=200, verbose_name="Video URL", blank=True)
    date_added = models.DateField(auto_now=False, auto_now_add=True)

    def __str__(self):
        return self.title

# User Submitted Carl Story
class Story(models.Model):

    submitter = models.CharField(max_length=200, verbose_name="Submitter")
    video_upload = models.FileField(upload_to="stories/", verbose_name="Video File", blank=True)
    title = models.CharField(max_length=200, verbose_name="Video Title")
    description = models.TextField(verbose_name="Video Description", blank=True)

    date_added = models.DateField(auto_now=False, auto_now_add=True)

    def __str__(self):
        return self.title

# Gallery Photo
class Photo(models.Model):

    title = models.CharField(max_length=200, verbose_name="Photo Title")
    caption = models.CharField(max_length=200, verbose_name="Photo Caption", blank=True)
    image_url = models.ImageField(upload_to="gallery/", verbose_name="Image File")

    date_added = models.DateField(auto_now=False, auto_now_add=True)

    def __str__(self):
        return self.title
