from django.db import models


class Produce(models.Model):
    name = models.CharField(max_length=63)
    quantity = models.IntegerField()

    def __str__(self):
        return f'{self.name}({self.quantity})'


class Shipment(models.Model):
    name = models.CharField(max_length=63)
    created = models.DateTimeField(auto_now_add=True)
    shipped = models.BooleanField(default=False)
    produce = models.ForeignKey(Produce, on_delete=models.DO_NOTHING)

    class Meta:
        ordering = ['created']

    def __str__(self):
        return f'{self.name}'
