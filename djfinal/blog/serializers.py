from rest_framework import serializers
from .models import *


class PostsSerializer(serializers.ModelSerializer):

    class Meta:
        model = Posts
        fields = "__all__"

class CommentsSerializer(serializers.ModelSerializer):

    class Meta:
        model = Comments
        fields = "__all__"
        depth = 1

class ReponsesSerializer(serializers.ModelSerializer):

    class Meta:
        model = Reponses
        fields = "__all__"
        