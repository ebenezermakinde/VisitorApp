from django.urls import include, path
from eben_app.views import ListVisitor


# visitor_list =  ListVisitor.as_view({'get': 'list'})



urlpatterns = [
    
path('', ListVisitor.as_view(), name='visitor-list'),

]