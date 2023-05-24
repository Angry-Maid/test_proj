from rest_framework import viewsets

from shipments.models import Produce, Shipment
from shipments.serializers import ProduceSerializer, ShipmentSerializer


class ProduceList(viewsets.ModelViewSet):
    queryset = Produce.objects.all()
    serializer_class = ProduceSerializer


class ShipmentList(viewsets.ModelViewSet):
    queryset = Shipment.objects.all()
    serializer_class = ShipmentSerializer
