import 'package:dio/dio.dart';
import 'package:tresastronautas_frotend/src/core/interceptors/logging_interceptor.dart';
import 'package:tresastronautas_frotend/src/data/models/restaurant_model.dart';
import 'package:tresastronautas_frotend/src/data/services/preferences_service.dart';

import '../../domain/entities/location_entity.dart';

abstract class RestaurantService {
  Future<List<RestaurantModel>> getRestaurantList();

  Future<RestaurantModel> getRestaurant({required String id});

  Future<LocationEntity> searchCity({
    required String search,
  });

  Future<bool> productAdd({
    required String name,
    required String price,
  });

  Future<bool> productEdit({
    required String id,
    required String name,
    required String price,
  });
}

class RestaurantServiceImpl implements RestaurantService {
  RestaurantServiceImpl(this._client, this._apiKey, this._preferencesService);

  final Dio _client;
  final String _apiKey;
  final PreferencesService _preferencesService;

  @override
  Future<List<RestaurantModel>> getRestaurantList() async {
    try {
      final response = await _client.get(
        '/product/${_preferencesService.getAccessToken()?.user.id}',
        options: Options(
          contentType: Headers.jsonContentType,
          headers: _setHeaders(),
        ),
      );
      if (response.statusCode == 200) {
        return (response.data as List)
            .map((x) => RestaurantModel.fromJson(x))
            .toList();
      }
      return [];
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }

  @override
  Future<RestaurantModel> getRestaurant({required String id}) async {
    try {
      final response = await _client.get(
        '/product/id/${id}',
        options: Options(
          contentType: Headers.jsonContentType,
          headers: _setHeaders(),
        ),
      );
      if (response.statusCode == 200) {
        return RestaurantModel.fromJson(response.data);
      }
      return RestaurantModel.fromJson({});
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }

  @override
  Future<bool> productAdd({required String name, required String price}) async {
    try {
      final response = await _client.post('/product',
          options: Options(
            contentType: Headers.jsonContentType,
            headers: _setHeaders(),
          ),
          data: {
            "name": name,
            "price": price,
            "owner": _preferencesService.getAccessToken()!.user.id,
          });
      if (response.statusCode == 200) {
        return true;
      }
      return false;
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }

  @override
  Future<bool> productEdit({
    required String id,
    required String name,
    required String price,
  }) async {
    try {
      final response = await _client.put('/product/${id}',
          options: Options(
            contentType: Headers.jsonContentType,
            headers: _setHeaders(),
          ),
          data: {
            "name": name,
            "price": price,
          });
      if (response.statusCode == 200) {
        return true;
      }
      return false;
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }

  @override
  Future<LocationEntity> searchCity({required String search}) async {
    final Dio _dio = Dio(BaseOptions(
        baseUrl: 'https://api.opencagedata.com/geocode/v1/',
        connectTimeout: 15000))
      ..interceptors.add(LoggingInterceptor());

    try {
      final response = await _dio.get(
        '/json/?q=${search}&key=f88d7c60ec6646bda6bc1320f5f710b5',
      );
      if (response.statusCode == 200) {
        return LocationEntity(
          lng: response.data['results'][0]['geometry']['lng'].toString(),
          lan: response.data['results'][0]['geometry']['lat'].toString(),
        );
      }
      return LocationEntity(lng: "75.590553", lan: "6.230833");
    } on DioError catch (e) {
      throw Exception(e.message);
    }
  }

  Map<String, dynamic> _setHeaders() => <String, dynamic>{
        'Accept': 'application/json',
        'Content-type': 'application/json',
        'Authorization':
            'Bearer ${_preferencesService.getAccessToken()?.accessToken ?? ''}',
      };
}
