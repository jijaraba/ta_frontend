import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tresastronautas_frotend/src/core/exceptions/data_exceptions.dart';
import 'package:tresastronautas_frotend/src/core/forms/product/product_form_state_notifier.dart';
import 'package:tresastronautas_frotend/src/domain/repositories/i_preferences_repository.dart';
import 'package:tresastronautas_frotend/src/domain/repositories/i_restaurant_repository.dart';
import 'package:tresastronautas_frotend/src/domain/repositories/i_user_repository.dart';
import 'package:tresastronautas_frotend/src/presentation/viewmodels/login/login_state.dart';
import 'package:tresastronautas_frotend/src/presentation/viewmodels/product/product_state.dart';

class ProductViewModel extends StateNotifier<ProductState> {
  ProductViewModel(
    this._restaurantRepository,
    this._userRepository,
    this._preferencesRepository,
  ) : super(const ProductState.initial());

  final IRestaurantRepository _restaurantRepository;
  final IUserRepository _userRepository;
  final IPreferencesRepository _preferencesRepository;

  Future<void> productAdd(ProductFormState product) async {
    return _run(() async {
      final productResult = await _restaurantRepository.productAdd(
        name: product.name.value,
        price: product.price.value,
      );
      state = ProductState.success();
    });
  }

  Future<void> _run(Future<void> Function() action) async {
    state = const ProductState.loading();

    try {
      await action();
    } on Exception catch (e) {
      state = ProductState.error(ProductErrorType.noProductData, e.toString());
    }
  }
}

extension ToLoginErrorTypeConverter on Exception {
  LoginErrorType toLoginErrorType() {
    switch (this) {
      case UserNotFoundException():
        return LoginErrorType.userNotFound;
      case WrongPasswordException():
        return LoginErrorType.wrongPassword;
      default:
        return LoginErrorType.undefined;
    }
  }
}
