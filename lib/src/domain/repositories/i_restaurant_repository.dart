import 'package:tresastronautas_frotend/src/domain/entities/location_entity.dart';
import 'package:tresastronautas_frotend/src/domain/entities/restaurant_entity.dart';

abstract class IRestaurantRepository {
  Future<List<RestaurantEntity>> getRestaurantList();

  Future<LocationEntity> searchCity({
    required String search,
  });

  Future<bool> productAdd({
    required String name,
    required String price,
  });
}
