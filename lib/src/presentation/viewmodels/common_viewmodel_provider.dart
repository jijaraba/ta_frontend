import 'package:geolocator/geolocator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tresastronautas_frotend/dependencies.dart';
import 'package:tresastronautas_frotend/src/data/models/access_token_local_model.dart';
import 'package:tresastronautas_frotend/src/data/models/access_token_model.dart';
import 'package:tresastronautas_frotend/src/domain/entities/access_token_entity.dart';
import 'package:tresastronautas_frotend/src/domain/entities/access_token_local_entity.dart';
import 'package:tresastronautas_frotend/src/domain/entities/location_entity.dart';
import 'package:tresastronautas_frotend/src/domain/entities/restaurant_entity.dart';
import 'package:tresastronautas_frotend/src/domain/entities/user_entity.dart';

final userLocalPod = FutureProvider<AccessTokenLocal?>(
  (ref) async => ref.watch(preferencesRepositoryPod).getAccessToken(),
);

final geolocationDataPod = FutureProvider<Position>(
  (ref) async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    return await Geolocator.getCurrentPosition();
  },
);

final productDataPod =
    FutureProvider.autoDispose<List<RestaurantEntity>>(
  (ref) async {
    return ref.watch(restaurantRepositoryPod).getRestaurantList();
  },
);


final productGetDataPod =
FutureProvider.family.autoDispose<RestaurantEntity, String>(
      (ref, id) async {
    return ref.watch(restaurantRepositoryPod).getRestaurant(id:id);
  },
);
