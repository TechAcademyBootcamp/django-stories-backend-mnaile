from django.shortcuts import render
from django.contrib.auth.views import LoginView, PasswordChangeView, PasswordResetView, PasswordResetConfirmView
from django.views.generic import CreateView
from accounts.forms import *
from django.urls import reverse_lazy
# Create your views here.

def login(request):
    return render(request, 'login.html')

class CustomLoginView(LoginView):
    template_name = 'login.html'
    form_class = Login


def register(request):
    return render(request, 'register.html')

class RegisterView(CreateView):
    template_name = 'register.html'
    form_class = Register
    success_url = reverse_lazy('accounts:login')

def change_password(request):
    return render(request, 'change_password.html')

class ChangePasswordView(PasswordChangeView):
    template_name = 'change_password.html'
    form_class = ChangePassword
    success_url = reverse_lazy('accounts:login')

class ForgetPassword(PasswordResetView):
    template_name= "forget_password.html" 
    success_url= reverse_lazy('accounts:login')
    email_template_name = 'reset_password_email.html'
    form_class = ForgetPassword

class ResetPasswordView(PasswordResetConfirmView):
    template_name = 'reset_password.html'
    form_class = ResetPassword
    success_url = reverse_lazy('accounts:login')

    
    
    
    
