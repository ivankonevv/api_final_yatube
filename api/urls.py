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

token_url = [
    path(
        'token/',
        TokenObtainPairView.as_view(),
        name='token_obtain_pair',
    ),
]

urlpatterns = [
    path(
        'v1/',
        include(router.urls),
    ),
    path(
        '',
        include(token_url),
    ),
    path(
        'v1/follow/',
        FollowViewSet.as_view(),
    ),
    path(
        'refresh/',
        include(token_url),
        TokenRefreshView.as_view(),
        name='token_refresh',
    ),
]
