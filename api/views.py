from rest_framework import filters, mixins, permissions, viewsets
from rest_framework.generics import get_object_or_404

from .models import Follow, Group, Post
from .permissions import IsOwnerOrReadOnly
from .serializers import (CommentSerializer, FollowSerializer, GroupSerializer,
                          PostSerializer)


class PostViewSet(viewsets.ModelViewSet):
    """
    View function of single or list of posts.
    """
    permission_classes = [
        permissions.IsAuthenticatedOrReadOnly,
        IsOwnerOrReadOnly,
    ]
    serializer_class = PostSerializer
    queryset = Post.objects.all()
    filterset_fields = ['group']

    def perform_create(self, serializer):
        return serializer.save(author=self.request.user)


class CommentViewSet(viewsets.ModelViewSet):
    """
    Comment view function.
    """
    permission_classes = [
        permissions.IsAuthenticatedOrReadOnly,
        IsOwnerOrReadOnly,
    ]
    serializer_class = CommentSerializer

    def perform_create(self, serializer):
        post_id = self.kwargs.get('post_id')
        author = self.request.user
        post = get_object_or_404(Post, pk=post_id)
        return serializer.save(author=author, post=post)

    def get_queryset(self):
        post_id = self.kwargs.get('post_id')
        post = get_object_or_404(Post, pk=post_id)
        return post.comments.all()


class FollowViewSet(
    mixins.ListModelMixin,
    mixins.CreateModelMixin,
    viewsets.GenericViewSet,
):
    """
    View function of following users, may be searched by username
    and following username.
    """
    permission_classes = [permissions.IsAuthenticated, IsOwnerOrReadOnly]
    serializer_class = FollowSerializer
    filter_backends = [filters.SearchFilter]
    search_fields = ['=user__username', '=following__username']

    def perform_create(self, serializer):
        serializer.save(user=self.request.user)

    def get_queryset(self):
        return Follow.objects.filter(following=self.request.user)


class GroupViewSet(
    mixins.ListModelMixin,
    mixins.CreateModelMixin,
    viewsets.GenericViewSet,
):
    """
    View function of single group or list of groups.
    """
    serializer_class = GroupSerializer
    queryset = Group.objects.all()
