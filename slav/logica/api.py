from tastypie.resources import ModelResource
from logica.models import Autor

class AutorResource(ModelResource):
 class Meta:
   queryset = Autor.objects.all()
   resource_name = 'autor'

   	