from django.shortcuts import render
from stories.models import *
from django.views.generic import ListView, CreateView, TemplateView, View, DetailView
from django.contrib.auth import get_user_model
from stories.forms import *
from django.urls import reverse_lazy

User = get_user_model()

# Create your views here.

def home(request):
    return render(request, 'index.html')

class HomeTemplateView(TemplateView):
    template_name = 'index.html'

    def get_context_data(self):
        context = super().get_context_data()
        context['categories'] = Category.objects.all()[:3]
        if self.request.user.is_authenticated:
            context['stories']= Story.objects.filter(user=self.request.user).order_by('created_at')[:3]
        context['recent_stories'] = Story.objects.all().order_by('created_at')[:4]
        context['random_story'] = Story.objects.all().order_by("?").first()
        context['recipes'] = Recipe.objects.all()[:2]
        return context

def user_profile(request):
    return render(request, 'user-profile.html')

class UserProfileView(TemplateView):
    template_name = 'user-profile.html'

    def get_context_data(self):
        context = super().get_context_data()
        if self.request.user.is_authenticated:
            context['stories']= Story.objects.filter(user=self.request.user)
        return context
            


def about(request):
    return render(request, 'about.html')



class AboutTemplateView(TemplateView):
    template_name = 'about.html'

    def get_context_data(self):
        context = super().get_context_data()
        context['about'] = About.objects.last()
        context['story']= Story.objects.count()
        context['recipe'] = Recipe.objects.count()
        context['user'] = User.objects.count()
        return context

def contact(request):
    return render(request, 'contact.html')

class ContactCreateView(CreateView):
    model = Contact
    template_name = 'contact.html'
    # context_object_name = 'contact_create'
    form_class = ContactForm
    success_url = reverse_lazy('stories:home')



def recipes(request):
    return render(request, 'recipes.html')

class RecipeList(ListView):
    model = Recipe
    paginate_by = 3
    template_name = 'recipes.html'
    context_object_name = 'recipe_list'

    def get_context_data(self):
        context = super().get_context_data()
        context['categories'] = Category.objects.all()[:3]
        return context

def stories(request):
    return render(request, 'strories.html')

class StoriesList(ListView):
    model = Story
    paginate_by = 6
    template_name = 'strories.html'
    context_object_name = 'stories_list'

    def get_context_data(self):
        context = super().get_context_data()
        context['categories'] = Category.objects.all()[:3]
        return context

def createstory(request):
    return render(request, 'create_story.html')

class StoryCreateView(CreateView):
    model = Story
    form_class = CreateStory
    template_name = 'create_story.html'
    success_url = reverse_lazy('stories:stories')

def createrecipe(request):
    return render(request, 'create_recipe.html')

class RecipeCreateView(CreateView):
    model = Recipe
    form_class = CreateRecipe
    template_name = 'create_recipe.html'
    success_url = reverse_lazy('stories:recipes')

    
# def single(request):
#     return render(request, 'single.html')

# def single(request, pk):
#     recipe = Recipe.objects.get(id=pk)
#     context = {
#         'recipe_data':recipe,
#     }
#     return render(request, 'single.html')

class SingleDetailView(DetailView):
    template_name = 'single.html'
    context_object_name = 'recipe_data'
    model = Recipe

#     def get_context_data(self):
#         context = super().get_context_data()
#          if self.request.user.is_authenticated:
#             context['recipes']= Story.objects.filter(user=self.request.user)
#         return context
