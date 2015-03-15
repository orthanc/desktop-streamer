from django.conf.urls import patterns, url

from desktop_video_stream import views

urlpatterns = patterns('',
	url(r'^$', views.index, name='index')
)
