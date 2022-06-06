import 'package:formz/formz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tresastronautas_frotend/src/core/forms/search/search_form.dart';

class SearchFormState with FormzMixin {
  SearchFormState({
    this.search = const SearchForm.pure(),
  });

  final SearchForm search;

  SearchFormState copyWith({SearchForm? search}) {
    return SearchFormState(
      search: search ?? this.search,
    );
  }

  @override
  List<FormzInput> get inputs => [search];
}

class SearchFormNotifier extends StateNotifier<SearchFormState> {
  SearchFormNotifier() : super(SearchFormState());

  void changeSearch(String value) {
    state = state.copyWith(search: SearchForm.dirty(value));
  }
}

final searchNotifierPod =
    StateNotifierProvider.autoDispose<SearchFormNotifier, SearchFormState>(
  (_) => SearchFormNotifier(),
);
