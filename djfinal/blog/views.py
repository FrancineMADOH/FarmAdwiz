from rest_framework.views import APIView
from rest_framework.response import Response
from .models import *
from .serializers import *

class PostsView(APIView):
    def get(self,request):
        query = Posts.objects.all()
        serializer = PostsSerializer(query, many=True)
        data = []
        for post in serializer.data:
            post_like = Likes.objects.filter(post=post['id']).filter(like=True).count()
            post['totallike'] = post_like
            comment_query = Comments.objects.filter(post=post['id'])
            comment_serializer = CommentsSerializer(comment_query,many=True)
            comment_data=[]
            for comment in comment_serializer.data:
                rep_query = Reponses.objects.filter(comment=comment['id'])
                rep_serializer = ReponsesSerializer(rep_query,many=True)
                comment['reply'] = rep_serializer.data
                comment_data.append(comment)
            post['comment'] = comment_data
            data.append(post)
        return Response(data) 


 