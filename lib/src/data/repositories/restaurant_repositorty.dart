import 'package:tresastronautas_frotend/src/data/services/restaurant_service.dart';
import 'package:tresastronautas_frotend/src/domain/entities/location_entity.dart';
import 'package:tresastronautas_frotend/src/domain/entities/restaurant_entity.dart';
import 'package:tresastronautas_frotend/src/domain/repositories/i_restaurant_repository.dart';
import 'package:tresastronautas_frotend/src/core/utils/model_extensions.dart';

class RestaurantRepository implements IRestaurantRepository {
  RestaurantRepository(this._restaurantService);

  final RestaurantService _restaurantService;

  @override
  Future<List<RestaurantEntity>> getRestaurantList() async {
    final restaurantModel = await _restaurantService.getRestaurantList();
    return restaurantModel.map((item) => item.toRestaurantEntity()).toList();
  }

  @override
  Future<RestaurantEntity> getRestaurant({required String id}) async {
    final restaurantModel = await _restaurantService.getRestaurant(id: id);
    return restaurantModel.toRestaurantEntity();
  }

  @override
  Future<LocationEntity> searchCity({required String search}) async {
    final locationModel = await _restaurantService.searchCity(search: search);
    return locationModel;
  }

  @override
  Future<bool> productAdd({required String name, required String price}) async {
    final locationModel =
        await _restaurantService.productAdd(name: name, price: price);
    return locationModel;
  }

  @override
  Future<bool> productEdit(
      {required String id, required String name, required String price}) async {
    final locationModel = await _restaurantService.productEdit(
      id: id,
      name: name,
      price: price,
    );
    return locationModel;
  }
}
