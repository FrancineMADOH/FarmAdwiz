from rest_framework.views import APIView
from rest_framework.response import Response
from .models import *
from .serializers import *

class PostsView(APIView):
    def get(self,request):
        query = Posts.objects.all()
        serializer = PostsSerializer(query, many=True)
        return Response(serializer.data) 


