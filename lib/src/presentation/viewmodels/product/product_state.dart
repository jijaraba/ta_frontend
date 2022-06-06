import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_state.freezed.dart';

enum ProductErrorType { noProductData }

@freezed
class ProductState with _$ProductState {
  const factory ProductState.initial() = _ProductStateInitial;
  const factory ProductState.loading() = _ProductStateLoading;
  const factory ProductState.success() = _ProductStateSuccess;
  const factory ProductState.error(ProductErrorType type, [String? error]) =
  _ProductStateError;
}

extension ProductStateX on ProductState{
  bool get isLoading => this is _ProductStateLoading;
  bool get isSuccess => this is _ProductStateSuccess;
  bool get isError => this is _ProductStateError;
  ProductErrorType get errorType => (this as _ProductStateError).type;
  String? get errorMessage => (this as _ProductStateError).error;
}
