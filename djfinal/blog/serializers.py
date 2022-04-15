from rest_framework import serializers
from .models import *
from django.contrib.auth import get_user_model

class UserSerializers(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ('id', 'username', 'password', 'email',)
        extra_kwargs = {'password': {"write_only": True, 'required': True}}

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
        
class ProfileSerializer(serializers.ModelSerializer):
    class Meta:
        fields = "__all__"


        