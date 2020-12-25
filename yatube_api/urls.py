from django.contrib import admin
from django.urls import include, path
from django.views.generic import TemplateView
from rest_framework_simplejwt.views import (TokenObtainPairView,
                                            TokenRefreshView)

token_url = [
    path(
        '',
        TokenObtainPairView.as_view(),
        name='token_obtain_pair',
    ),
    path(
        'refresh/',
        TokenRefreshView.as_view(),
        name='token_refresh',
    ),
]

urlpatterns = [
    path(
        'token/',
        include(token_url),
        name='token'
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

]
