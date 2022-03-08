from django.db import models

# Create your models here.

class Regions(model.models):

    libelle = models.CharField(max_length=150)
    def __str__(self):
        return self.libelle 

class Posts(models.Model):
    
    region = models.ForeignKey(Regions,on_delete=models.CASCADE)
    titre = models.CharField(max_length=255)
    description = models.TextField(bank=True,null=True)
    #image = models.ImageField(default='avatar.jpg', upload_to ='profile_Images')
    #videos = models.FileField(upload_to='videos/', null=True, verbose_name="")
    date = models.DateField(auto_now_add=True) 

    def __str__(self):
        return self.titre

class Comments(models.Model):
    user = models.ForeignKey(User,on_delete=models.CASCADE)
    post = models.ForeignKey(Posts,on_delete=models.CASCADE)
    titre = models.TextField() 
    time = models.DateField(auto_now_add=True)
    #image = models.ImageField(default='avatar.jpg', upload_to ='profile_Images')
    #videos = models.FileField(upload_to='videos/', null=True, verbose_name="")


class Reponses(models.Model):
    user = models.ForeignKey(User,on_delete=models.CASCADE)
    comment = models.ForeignKey(Comments,on_delete=models.CASCADE)
    titre = models.TextField()
    time = models.DateField(auto_now_add=True)


class Likes(models.Model):
    post = models. ForeignKey(Posts,on_delete=models.CASCADE)
    user = models.ForeignKey(User,on_delete=models.CASCADE
    like = models.BooleanField(default=False)

