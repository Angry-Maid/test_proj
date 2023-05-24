from django.contrib import admin
from shipments.models import Produce, Shipment


@admin.register(Produce)
class ProduceAdmin(admin.ModelAdmin):
    pass


@admin.register(Shipment)
class ShipmentAdmin(admin.ModelAdmin):
    pass
