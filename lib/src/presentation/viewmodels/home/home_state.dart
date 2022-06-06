import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

enum HomeErrorType { noUserData }

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _HomeStateInitial;
  const factory HomeState.loading() = _HomeStateLoading;
  const factory HomeState.success() = _HomeStateSuccess;
  const factory HomeState.error(HomeErrorType type, [String? error]) =
  _HomeStateError;
}

extension HomeStateX on HomeState{
  bool get isLoading => this is _HomeStateLoading;
  bool get isSuccess => this is _HomeStateSuccess;
  bool get isError => this is _HomeStateError;
  HomeErrorType get errorType => (this as _HomeStateError).type;
  String? get errorMessage => (this as _HomeStateError).error;
}
