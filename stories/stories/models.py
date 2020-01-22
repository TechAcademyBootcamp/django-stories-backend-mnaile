from django.db import models
from djrichtextfield.models import RichTextField
from django.contrib.auth import get_user_model

User = get_user_model()

# Create your models here.

class About(models.Model):
    #relation

    #information
    image = models.ImageField(upload_to='about/')
    title = models.CharField(max_length=50)
    description = models.CharField(max_length=250)
    daily_visitors = models.IntegerField()

    #moderator
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return f"{self.image} {self.title} {self.description} {self.daily_visitors}"


class CompanyContact(models.Model):
    #relation

    #information
    title =  models.CharField(max_length=50)
    icon = models.CharField(max_length=30)
    info = models.CharField(max_length=50)

    #moderator
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return f"{self.title} {self.icon} {self.info}"


class Category(models.Model):
    #relation

    #information
    image = models.ImageField(upload_to='category/')
    title = models.CharField(max_length=50)

    #moderator
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return f"{self.image} {self.title} "


class Story(models.Model):
    #relation
    category = models.ForeignKey(Category, on_delete=models.CASCADE)
    user = models.ForeignKey(User, on_delete=models.CASCADE,null=True)
    #information
    image = models.ImageField(upload_to='stories/')
    title = models.CharField(max_length=50)
    description = models.CharField(max_length=250)
    long_description = RichTextField('long description')

     #moderator
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return f"{self.image} {self.title}  "

class Recipe(models.Model):
    #relation
    category = models.ForeignKey(Category, on_delete=models.CASCADE)
    user = models.ForeignKey(User, on_delete=models.CASCADE,null=True)
    

    #information
    image = models.ImageField(upload_to='recipes/')
    title = models.CharField(max_length=50)
    description = models.TextField(blank=False)
    long_description = RichTextField('long description')
    

    #moderator
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return f"{self.image} {self.title} {self.description} "


class Contact(models.Model):
    #relation

    #information
    name = models.CharField(max_length=50)
    email = models.EmailField(max_length=50)
    subject = models.CharField(max_length=254)
    message = models.TextField()

    #moderator
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return f"{self.name} {self.email} {self.subject} {self.message}"


class CommentReply(models.Model):
    #relation 
    reply_comment = models.ForeignKey('self', on_delete=models.CASCADE, null=True, blank=True)

    #information
    name = models.CharField(max_length=30)
    comment = models.CharField(max_length=254)

    #moderator
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return f"{self.name} {self.title}"

