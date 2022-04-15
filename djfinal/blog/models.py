from django.db import models
from django.contrib.auth.models import User

# Create your models here.

class Regions(models.Model):

    libelle = models.CharField(max_length=150)
    def __str__(self):
        return self.libelle 
 
class Posts(models.Model):
    
    region = models.ForeignKey(Regions,on_delete=models.CASCADE)
    titre = models.CharField(max_length=255)
    description = models.TextField(blank=True,null=True)
    date = models.DateField(auto_now_add=True) 
    #image = models.ImageField(default='avatar.jpg', upload_to ='profile_Images')
    #videos = models.FileField(upload_to='videos/', null=True, verbose_name="")

    def __str__(self):
        return self.titre

class Comments(models.Model):
    user = models.ForeignKey(User,on_delete=models.CASCADE)
    post = models.ForeignKey(Posts,on_delete=models.CASCADE)
    titre = models.TextField() 
    time = models.DateField(auto_now_add=True)
    #image = models.ImageField(default='avatar.jpg', upload_to ='profile_Images')
    #videos = models.FileField(upload_to='videos/', null=True, verbose_name="")

    def __str__(self):
        return self.titre



class Reponses(models.Model):
    user = models.ForeignKey(User,on_delete=models.CASCADE)
    comment = models.ForeignKey(Comments,on_delete=models.CASCADE)
    titre = models.TextField()
    time = models.DateField(auto_now_add=True)
    image = models.ImageField(default='avatar.jpg', upload_to ='profile_Images')
    videos = models.FileField(upload_to='videos/', null=True, verbose_name="")

    def __str__(self):
        return f"User={self.user.username}||comment={self.comm0ent}"


class Likes(models.Model):
    post = models. ForeignKey(Posts,on_delete=models.CASCADE)
    user = models.ForeignKey(User,on_delete=models.CASCADE)
    like = models.BooleanField(default=False)

    def __str__(self):
        return f"Posts={self.post.id}|| User={self.user.username}||Like={self.like}"

class Profile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    address = models.CharField(max_length=200)
    phone = models.CharField(max_length=50)
    profile_Url = models.ImageField(default='default.png',
                           upload_to='profile_images')

    def __str__(self):
        return f'{self.user.username}-Profile'
