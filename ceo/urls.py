from django.conf.urls.static import static
from django.conf import settings
from django.views.static import serve

from django.contrib import admin
from django.urls import path, include, re_path

from django.contrib.staticfiles.urls import staticfiles_urlpatterns # new
from django.conf.urls import handler404

urlpatterns = [
    re_path(r'^media/(?P<path>.*)$', serve, {'document_root': settings.MEDIA_ROOT}),
    re_path(r'^static/(?P<path>.*)$', serve, {'document_root': settings.STATIC_ROOT}),


    path('', include('shifting.urls')),

    path('admin/', admin.site.urls),

    path(r'jet/', include('jet.urls', 'jet')),
    path(r'jet/dashboard/', include('jet.dashboard.urls', 'jet-dashboard')), # Django JET dashboard URLS
]

handler404 = 'shifting.views.custom_404'