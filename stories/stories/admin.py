from django.contrib import admin
from stories.models import *
# Register your models here.


admin.site.register([About, CompanyContact, Category, Story, Recipe, Contact, CommentReply])