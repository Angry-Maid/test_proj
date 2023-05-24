from django.urls import path, include
from rest_framework import routers

from shipments import views


router = routers.DefaultRouter()
router.register(r'produce', views.ProduceList)
router.register(r'shipments', views.ShipmentList)


urlpatterns = [
    path('', include(router.urls))
]
