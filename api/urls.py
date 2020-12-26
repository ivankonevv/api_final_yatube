from django.urls import include, path
from rest_framework.routers import DefaultRouter
from rest_framework_simplejwt.views import (TokenObtainPairView,
                                            TokenRefreshView)

from .views import CommentViewSet, FollowViewSet, GroupViewSet, PostViewSet

router = DefaultRouter()
router.register(
    'posts',
    PostViewSet,
    basename='posts',
)
router.register(
    r'posts/(?P<post_id>\d+)/comments',
    CommentViewSet,
    basename='comments',
)
router.register(
    'group',
    GroupViewSet,
    basename='group',
)
router.register(
    'follow',
    FollowViewSet,
    basename='follow',
)

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
        'v1/',
        include(router.urls),
    ),
    path(
        'v1/token/',
        include(token_url),
        name='token'
    ),
]
