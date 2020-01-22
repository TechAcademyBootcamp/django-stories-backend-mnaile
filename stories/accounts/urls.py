from django.urls import path
from .views import *

app_name = 'accounts'

urlpatterns = [
    path('login/', CustomLoginView.as_view(), name='login'),
    path('register/', RegisterView.as_view(), name='register'),
    path('change_password/', ChangePasswordView.as_view(), name='change_password'),
    path('forget/', ForgetPassword.as_view(), name='forget'),
    path('reset/<uidb64>/<token>/', ResetPasswordView.as_view(), name='reset_password'),
]