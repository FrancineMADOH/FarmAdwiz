from django.urls import path
from .views import *

urlpatterns = [
    path("posts/", PostsView.as_view()),
]