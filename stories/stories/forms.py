from django import forms
from .models import Contact, Story, Category, Recipe

class ContactForm(forms.ModelForm):
    name = forms.CharField(
        max_length=30,
        widget=forms.TextInput(attrs={
            'placeholder': 'Your Name',
            'class': 'form-control'
        }))
    email = forms.EmailField(
        max_length=254,
        widget=forms.EmailInput(attrs={
            'placeholder': 'Your Email',
            'class': 'form-control'
        }))
    subject = forms.CharField(
        max_length=254,
        widget=forms.TextInput(attrs={
            'placeholder': 'Subject',
            'class': 'form-control'
        }))
    message = forms.CharField(
        max_length=2000,
        widget=forms.Textarea(attrs={
            'placeholder': 'Message',
            'class': 'form-control'
        }))
    
    class Meta:
        model = Contact
        fields =['name', 'email', 'subject', 'message']

class CreateStory(forms.ModelForm):
    title = forms.CharField(
        max_length=250,
        widget=forms.TextInput(attrs={
           'placeholder': 'Title',
            'class': 'form-control' 
        })
    )
    description = forms.CharField(
        max_length=1000,
        widget=forms.Textarea(attrs={
           'placeholder': 'Description',
           'class': 'form-control'
             
        })
    )
    category = forms.ModelChoiceField(queryset=Category.objects.all(), widget=forms.Select(attrs={
        'placeholder': 'Select category',
        'class': 'form-control' 
    })
    )
    class Meta:
        model = Story
        fields = ['title', 'description', 'category', 'image']

class CreateRecipe(forms.ModelForm):
    title = forms.CharField(
        max_length=250,
        widget=forms.TextInput(attrs={
           'placeholder': 'Title',
            'class': 'form-control' 
        })
    )
    description = forms.CharField(
        max_length=1000,
        widget=forms.Textarea(attrs={
           'placeholder': 'Description',
            'class': 'form-control' 
        })
    )
    long_description = forms.CharField(
        max_length=1000,
        widget=forms.Textarea(attrs={
           'placeholder': 'Long description',
            'class': 'form-control' 
        })
    )
    category = forms.ModelChoiceField(queryset=Category.objects.all(), widget=forms.Select(attrs={
        'placeholder': 'Select category',
        'class': 'form-control' 
    })
    )
    class Meta:
        model = Recipe
        fields = ['title', 'description', 'category', 'image']