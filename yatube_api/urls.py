from django.contrib import admin
from django.urls import include, path
from django.views.generic import TemplateView
from rest_framework_simplejwt.views import (TokenObtainPairView,
                                            TokenRefreshView)

token_url = [
    path(
        'token/',
        TokenObtainPairView.as_view(),
        name='token_obtain_pair',
    ),
]

urlpatterns = [
    path(
        '',
        include(token_url),
    ),
    path(
        'admin/',
        admin.site.urls
    ),
    path(
        'api/',
        include('api.urls')
    ),
    path(
        'redoc/',
        TemplateView.as_view(template_name='redoc.html'),
        name='redoc'
    ),
    path(
        'refresh/',
        include(token_url),
        TokenRefreshView.as_view(),
        name='token_refresh',
    ),
]
