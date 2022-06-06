import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_state.freezed.dart';

enum SearchErrorType { noData }

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _SearchStateInitial;

  const factory SearchState.loading() = _SearchStateLoading;

  const factory SearchState.success({
    required String lng,
    required String lan,
  }) = _SearchStateSuccess;

  const factory SearchState.error(SearchErrorType type, [String? error]) =
      _SearchStateError;
}

extension SearchStateX on SearchState {
  bool get isLoading => this is _SearchStateLoading;

  bool get isSuccess => this is _SearchStateSuccess;

  bool get isError => this is _SearchStateError;

  SearchErrorType get errorType => (this as _SearchStateError).type;

  String? get errorMessage => (this as _SearchStateError).error;
}
