from django.db import models
from django.contrib.auth.models import AbstractUser
from django.contrib.auth import get_user_model


# Create your models here.

class User(AbstractUser):
    # relation

    # information
    bio = models.TextField(max_length=500, blank=True)
    image = models.ImageField(upload_to='user/')

    # moderator
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return f"{self.first_name}"