import 'package:formz/formz.dart';


enum ProductNameValidation { empty, invalid }

class ProductNameForm extends FormzInput<String, ProductNameValidation> {
  const ProductNameForm.pure() : super.pure('');

  const ProductNameForm.dirty(String value) : super.dirty(value);

  @override
  ProductNameValidation? validator(String value) {
    if (value.isEmpty) return ProductNameValidation.empty;
    return null;
  }
}


enum PriceValidation { empty, invalid }

class PriceForm extends FormzInput<String, PriceValidation> {
  const PriceForm.pure() : super.pure('');

  const PriceForm.dirty(String value) : super.dirty(value);

  @override
  PriceValidation? validator(String value) {
    if (value.isEmpty) return PriceValidation.empty;
    return null;
  }
}