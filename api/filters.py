from django_filters import rest_framework as filters

from .models import Follow, Post


class PostFilter(filters.FilterSet):
    group = filters.CharFilter()

    class Meta:
        model = Post
        fields = ('group',)


class FollowFilter(filters.FilterSet):
    user = filters.ModelChoiceFilter(queryset=Follow.objects.all())

    class Meta:
        model = Follow
        fields = ('user',)
