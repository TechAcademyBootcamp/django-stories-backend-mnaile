from django.urls import path
from .views import *
from django.contrib.auth.views import LogoutView

app_name = 'stories'

urlpatterns = [
    path('', HomeTemplateView.as_view(), name="home"),
    path('about/', AboutTemplateView.as_view(), name="about"),
    path('contact/', ContactCreateView.as_view(), name="contact"),
    path('recipes/', RecipeList.as_view(), name="recipes"),
    path('stories/', StoriesList.as_view(), name="stories"),
    path('createstory/', StoryCreateView.as_view(), name="createstory"),
    path('createrecipe/', RecipeCreateView.as_view(), name="createrecipe"),
    path('single/<int:pk>/', ResipeSingleDetailView.as_view(), name="single"),
    path('storysingle/<int:pk>/', StorySingleDetailView.as_view(), name="storysingle"),
    path('user-profile/', UserProfileView.as_view(), name="user-profile"),
    path('logout/', LogoutView.as_view(), name="logout")
]