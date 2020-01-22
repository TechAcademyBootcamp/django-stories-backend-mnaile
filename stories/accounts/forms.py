from django import forms
from django.contrib.auth.forms import AuthenticationForm,UserCreationForm, PasswordChangeForm, PasswordResetForm, SetPasswordForm
from django.contrib.auth import get_user_model

User = get_user_model()


class Login(AuthenticationForm):
    username = forms.CharField(widget=forms.TextInput(attrs={
        'placeholder' : 'Username',
        'class' : 'form-control'
    }))
    password = forms.CharField(widget=forms.PasswordInput(attrs={
        'placeholder' : 'Password',
        'class' : 'form-control'
    }))

    class Meta:
        model = User
        fields = ['username', 'password']

class Register(UserCreationForm):
    password1 = forms.CharField(widget=forms.PasswordInput(attrs={
        'class':'form-control',
        'placeholder': 'Password'
    }))
    password2 = forms.CharField(widget=forms.PasswordInput(attrs={
        'class':'form-control',
        'placeholder': 'Confirm Password'
    }))
    class Meta:
        model = User
        fields = ['first_name', 'last_name', 'username', 'email', 'password1', 'password2']
        widgets = {
            'first_name':forms.TextInput(attrs={
                'placeholder':'First name',
                'class':'form-control'
                }),
            'last_name':forms.TextInput(attrs={
                'placeholder':'Last name',
                'class':'form-control'
            }),
            'username':forms.TextInput(attrs={
                'placeholder':'Username',
                'class':'form-control'
            }),
            'email':forms.EmailInput(attrs={
                'placeholder':'Email',
                'class':'form-control'
            }),
            
        }

class ChangePassword(PasswordChangeForm):
    old_password = forms.CharField(widget=forms.PasswordInput(attrs={
        'placeholder' : 'Old Password',
        'class' : 'form-control'
    }))
    new_password1 = forms.CharField(widget=forms.PasswordInput(attrs={
        'placeholder' : 'New Password',
        'class' : 'form-control'
    }))
    new_password2 = forms.CharField(widget=forms.PasswordInput(attrs={
        'placeholder' : 'Re-enter New Password',
        'class' : 'form-control'
    }))

class ForgetPassword(PasswordResetForm):
    email = forms.CharField(widget=forms.EmailInput(attrs={
        'placeholder' : 'Email',
        'class' : 'form-control'
    }))

class ResetPassword(SetPasswordForm):
    new_password1 = forms.CharField(widget=forms.PasswordInput(attrs={
        'placeholder' : 'New password',
        'class' : "form-control"
    }))
    new_password2 = forms.CharField(widget=forms.PasswordInput(attrs={
        'placeholder' : 'Re-enter new password',
        'class' : "form-control"
    }))
