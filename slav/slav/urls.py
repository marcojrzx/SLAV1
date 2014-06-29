# encoding: utf-8 
from django.conf.urls import patterns, include, url

from django.contrib import admin
from tastypie.api import Api
from logica.api import AutorResource

admin.autodiscover()

autor_resource = AutorResource()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'slav.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),

    url(r'^admin/', include(admin.site.urls)),
    url(r'^api/', include(autor_resource.urls)),
)
