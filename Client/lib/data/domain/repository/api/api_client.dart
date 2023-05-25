import 'package:client/data/domain/entity/produce/produce.dart';
import 'package:client/data/domain/entity/shipment/shipment.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET('/produce/')
  Future<List<Produce>> getProduces();

  @GET('/produce/{id}/')
  Future<Produce> getProduce(@Path("id") int id);

  @POST('/produce/')
  Future<Produce> createProduce(@Body() Produce produce);

  @PUT('/produce/{id}/')
  Future<Produce> updateProduce(@Path("id") int id, @Body() Produce produce);

  @DELETE('/produce/{id}/')
  Future deleteProduce(@Path("id") int id);

  @GET('/shipments/')
  Future<List<Shipment>> getShipments();

  @GET('/shipments/{id}/')
  Future<Shipment> getShipment(@Path("id") int id);

  @POST('/shipments/')
  Future<Shipment> createShipment(@Body() Shipment shipment);

  @PUT('/shipments/{id}/')
  Future<Shipment> updateShipment(
      @Path("id") int id, @Body() Shipment shipment);

  @DELETE('/shipments/{id}/')
  Future deleteShipment(@Path("id") int id);
}
