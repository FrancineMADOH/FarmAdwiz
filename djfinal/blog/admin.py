from django.contrib import admin
from .models import Regions, Posts, Comments, Reponses, Likes, Profile
# Register your models here.

admin.site.register([Regions, Posts, Comments, Reponses, Likes, Profile])