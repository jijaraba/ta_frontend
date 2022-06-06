import 'package:formz/formz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tresastronautas_frotend/src/core/forms/product/product_form.dart';

class ProductFormState with FormzMixin {
  ProductFormState({
    this.name = const ProductNameForm.pure(),
    this.price = const PriceForm.pure(),
  });

  final ProductNameForm name;
  final PriceForm price;

  ProductFormState copyWith({ProductNameForm? name, PriceForm? price}) {
    return ProductFormState(
      name: name ?? this.name,
      price: price ?? this.price,
    );
  }

  @override
  List<FormzInput> get inputs => [name, price];
}

class ProductFormNotifier extends StateNotifier<ProductFormState> {
  ProductFormNotifier() : super(ProductFormState());

  void changeName(String value) {
    state = state.copyWith(name: ProductNameForm.dirty(value));
  }

  void changePrice(String value) {
    state = state.copyWith(price: PriceForm.dirty(value));
  }
}

final productNotifierPod =
    StateNotifierProvider.autoDispose<ProductFormNotifier, ProductFormState>(
  (_) => ProductFormNotifier(),
);
