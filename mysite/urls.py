from django.urls import include, re_path
from django.contrib.auth import views as auth_views

from mysite.core import views


urlpatterns = [
    re_path(r'^$', views.DocumentCreateView.as_view(), name='home'),
]
