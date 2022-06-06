import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tresastronautas_frotend/src/core/forms/search/search_form_state_notifier.dart';
import 'package:tresastronautas_frotend/src/domain/repositories/i_restaurant_repository.dart';
import 'package:tresastronautas_frotend/src/domain/repositories/i_user_repository.dart';
import 'package:tresastronautas_frotend/src/presentation/viewmodels/login/login_viewmodel.dart';
import 'package:tresastronautas_frotend/src/presentation/viewmodels/search/search_state.dart';

class SearchViewModel extends StateNotifier<SearchState> {
  SearchViewModel(
    this._restaurantRepository,
    this._userRepository,
  ) : super(const SearchState.initial());

  final IRestaurantRepository _restaurantRepository;
  final IUserRepository _userRepository;

  Future<void> searchByCity(SearchFormState search) async {
    return _run(() async {
      final searchResult =
          await _restaurantRepository.searchCity(search: search.search.value);

      state = SearchState.success(
        lng: searchResult.lng,
        lan: searchResult.lan,
      );
    });
  }

  Future<void> _run(Future<void> Function() action) async {
    state = const SearchState.loading();

    try {
      await action();
    } on Exception catch (e) {
      state = SearchState.error(SearchErrorType.noData, e.toString());
    }
  }
}
