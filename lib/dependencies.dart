import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tresastronautas_frotend/src/config/app_config.dart';
import 'package:tresastronautas_frotend/src/core/interceptors/logging_interceptor.dart';
import 'package:tresastronautas_frotend/src/data/repositories/login_repository.dart';
import 'package:tresastronautas_frotend/src/data/repositories/preferences_repository.dart';
import 'package:tresastronautas_frotend/src/data/repositories/register_repository.dart';
import 'package:tresastronautas_frotend/src/data/repositories/restaurant_repositorty.dart';
import 'package:tresastronautas_frotend/src/data/repositories/user_repository.dart';
import 'package:tresastronautas_frotend/src/data/services/login_service_impl.dart';
import 'package:tresastronautas_frotend/src/data/services/preferences_service.dart';
import 'package:tresastronautas_frotend/src/data/services/register_service.dart';
import 'package:tresastronautas_frotend/src/data/services/register_service_impl.dart';
import 'package:tresastronautas_frotend/src/data/services/restaurant_service.dart';
import 'package:tresastronautas_frotend/src/domain/repositories/i_login_repository.dart';
import 'package:tresastronautas_frotend/src/domain/repositories/i_preferences_repository.dart';
import 'package:tresastronautas_frotend/src/domain/repositories/i_register_repository.dart';
import 'package:tresastronautas_frotend/src/domain/repositories/i_restaurant_repository.dart';
import 'package:tresastronautas_frotend/src/domain/repositories/i_user_repository.dart';
import 'package:tresastronautas_frotend/src/presentation/viewmodels/home/home_state.dart';
import 'package:tresastronautas_frotend/src/presentation/viewmodels/home/home_viewmodel.dart';
import 'package:tresastronautas_frotend/src/presentation/viewmodels/login/login_state.dart';
import 'package:tresastronautas_frotend/src/presentation/viewmodels/login/login_viewmodel.dart';
import 'package:tresastronautas_frotend/src/presentation/viewmodels/product/product_state.dart';
import 'package:tresastronautas_frotend/src/presentation/viewmodels/product/product_viewmodel.dart';
import 'package:tresastronautas_frotend/src/presentation/viewmodels/register/register_state.dart';
import 'package:tresastronautas_frotend/src/presentation/viewmodels/register/register_viewmodel.dart';
import 'package:tresastronautas_frotend/src/presentation/viewmodels/search/search_state.dart';
import 'package:tresastronautas_frotend/src/presentation/viewmodels/search/search_viewmodel.dart';
import 'package:tresastronautas_frotend/src/presentation/viewmodels/user/user_state.dart';
import 'package:tresastronautas_frotend/src/presentation/viewmodels/user/user_viewmodel.dart';

//region Data source layer
final dioClientPod = Provider<Dio>(
  (ref) {
    return Dio(
      BaseOptions(
        baseUrl: ref.watch(appConfigPod).serverBaseUrl,
        connectTimeout: 15000,
      ),
    )..interceptors.add(LoggingInterceptor());
  },
  dependencies: [appConfigPod],
);

final preferencesPod = FutureProvider<SharedPreferences>(
  (_) => SharedPreferences.getInstance(),
);

final registerServicePod = Provider<RegisterService>(
  (ref) => RegisterServiceImpl(
    ref.watch(dioClientPod),
    appName: ref.watch(appConfigPod).appName,
  ),
  dependencies: [dioClientPod, appConfigPod],
);

//endregion

//register provider layer
final preferencesServicePod = Provider<PreferencesService>(
  (ref) {
    final sharedPreferencesData = ref.watch(preferencesPod).asData!;
    return PreferencesService(sharedPreferencesData.value);
  },
  dependencies: [preferencesPod],
);

//endregion

//register provider layer
final loginRepositoryPod = Provider<ILoginRepository>(
  (ref) => LoginRepository(
    LoginServiceImpl(
      ref.watch(dioClientPod),
      ref.watch(preferencesServicePod),
    ),
  ),
);

final userRepositoryPod = Provider<IUserRepository>(
  (ref) => UserRepository(),
);

final registerRepositoryPod = Provider<IRegisterRepository>(
  (ref) => RegisterRepository(ref.watch(registerServicePod)),
  dependencies: [registerServicePod],
);
final preferencesRepositoryPod = Provider<IPreferencesRepository>(
  (ref) => PreferencesRepository(ref.watch(preferencesServicePod)),
  dependencies: [preferencesServicePod],
);
final restaurantRepositoryPod = Provider<IRestaurantRepository>(
  (ref) => RestaurantRepository(
    RestaurantServiceImpl(
      ref.watch(dioClientPod),
      ref.watch(appConfigPod).apiKey,
      ref.watch(preferencesServicePod),
    ),
  ),
  dependencies: [dioClientPod, appConfigPod, preferencesServicePod],
);
//endregion

//region viewmodel layer
final loginViewModelPod = StateNotifierProvider<LoginViewModel, LoginState>(
  (ref) => LoginViewModel(
    ref.watch(loginRepositoryPod),
    ref.watch(userRepositoryPod),
    ref.watch(preferencesRepositoryPod),
  ),
  dependencies: [
    loginRepositoryPod,
    userRepositoryPod,
    preferencesRepositoryPod
  ],
);

final productViewModelPod = StateNotifierProvider<ProductViewModel, ProductState>(
  (ref) => ProductViewModel(
    ref.watch(restaurantRepositoryPod),
    ref.watch(userRepositoryPod),
    ref.watch(preferencesRepositoryPod),
  ),
  dependencies: [
    restaurantRepositoryPod,
    userRepositoryPod,
    preferencesRepositoryPod
  ],
);

final registerViewModelPod =
    StateNotifierProvider<RegisterViewModel, RegisterState>(
  (ref) => RegisterViewModel(
    ref.watch(registerRepositoryPod),
    ref.watch(preferencesRepositoryPod),
  ),
  dependencies: [registerRepositoryPod, preferencesRepositoryPod],
);

final homeViewModelPod = StateNotifierProvider<HomeViewModel, HomeState>(
  (ref) => HomeViewModel(
    ref.watch(loginRepositoryPod),
    ref.watch(userRepositoryPod),
    ref.watch(preferencesRepositoryPod),
  ),
  dependencies: [
    loginRepositoryPod,
    userRepositoryPod,
    preferencesRepositoryPod,
  ],
);
final userViewModelPod = StateNotifierProvider<UserViewModel, UserState>(
  (ref) => UserViewModel(
    ref.watch(loginRepositoryPod),
    ref.watch(userRepositoryPod),
    ref.watch(preferencesRepositoryPod),
  ),
  dependencies: [
    loginRepositoryPod,
    userRepositoryPod,
    preferencesRepositoryPod,
  ],
);

final searchViewModelPod = StateNotifierProvider<SearchViewModel, SearchState>(
  (ref) => SearchViewModel(
    ref.watch(restaurantRepositoryPod),
    ref.watch(userRepositoryPod),
  ),
  dependencies: [restaurantRepositoryPod, userRepositoryPod],
);

//endregion

//region App Config
final appConfigPod = Provider<AppConfig>(
  (_) => throw UnimplementedError('appConfigPod must be overridden'),
);
//endregion
