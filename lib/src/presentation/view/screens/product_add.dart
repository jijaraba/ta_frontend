import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tresastronautas_frotend/dependencies.dart';
import 'package:tresastronautas_frotend/src/core/forms/product/product_form.dart';
import 'package:tresastronautas_frotend/src/core/forms/product/product_form_state_notifier.dart';
import 'package:tresastronautas_frotend/src/core/forms/user/generic_user_form.dart';
import 'package:tresastronautas_frotend/src/core/hooks/curved_animation_hook.dart';
import 'package:tresastronautas_frotend/src/core/presentation/widgets/custom_button.dart';
import 'package:tresastronautas_frotend/src/core/presentation/widgets/custom_text_field.dart';
import 'package:tresastronautas_frotend/src/core/res/res.dart';
import 'package:tresastronautas_frotend/src/core/utils/common_extensions.dart';
import 'package:tresastronautas_frotend/src/presentation/viewmodels/common_viewmodel_provider.dart';
import 'package:tresastronautas_frotend/src/presentation/viewmodels/product/product_state.dart';

class ProductAddView extends ConsumerStatefulWidget {
  const ProductAddView({Key? key, this.uid, this.email}) : super(key: key);

  final String? uid;
  final String? email;

  @override
  ConsumerState<ProductAddView> createState() => _ProductAddViewState();
}

class _ProductAddViewState extends ConsumerState<ProductAddView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final userData = ref.watch(userLocalPod).whenOrNull(data: (data) => data);
    final localization = context.localizations;

    ref.listen(
      productViewModelPod,
      (_, ProductState state) => _onChangeState(context, state),
    );

    return Stack(children: [
      Scaffold(
        backgroundColor: colorScheme.background,
        body: SingleChildScrollView(
          child: Column(
            children: [
              _RestaurantHeader(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 20,
                ),
                child: Column(
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(bottom: 16),
                      child: _NameText(),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 16),
                      child: _PriceText(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 16),
                      child: _SubmitButton(
                        onSubmit: () =>
                            ref.read(productViewModelPod.notifier).productAdd(
                                  ref.read(productNotifierPod),
                                ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ]);
  }

  void _onChangeState(BuildContext context, ProductState state) {
    if (state.isSuccess) context.go('/home');
  }
}

class _RestaurantHeader extends StatefulHookConsumerWidget {
  const _RestaurantHeader({Key? key}) : super(key: key);

  @override
  ConsumerState<_RestaurantHeader> createState() => __RestaurantHeaderState();
}

class __RestaurantHeaderState extends ConsumerState<_RestaurantHeader> {
  @override
  Widget build(BuildContext context) {
    final animationController = useAnimationController(
      duration: const Duration(seconds: 1),
    );
    final animation = useCurvedAnimation(
      animationController,
      curve: Curves.bounceInOut,
    );

    useMemoized(() => Future<void>(animationController.forward));
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final userData = ref.watch(userLocalPod).whenOrNull(data: (data) => data);

    return Container(
      child: Stack(
        children: [
          Column(
            children: <Widget>[
              CachedNetworkImage(
                imageUrl:
                    "https://mandolina.co/wp-content/uploads/2021/04/restaurante-el-cielo.png",
                fit: BoxFit.cover,
                errorWidget: (_, __, ___) => const Icon(
                  Icons.restaurant,
                  color: Colors.grey,
                ),
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: UIColors.darkBlue,
                ),
              ),
            ],
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 120,
                height: 120,
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: UIColors.white,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: AspectRatio(
                  aspectRatio: 2.5 / 1.1,
                  child: ScaleTransition(
                    scale: animation,
                    child: ClipOval(
                      child: Image.asset(Assets.logoS),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _NameText extends HookConsumerWidget {
  const _NameText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = context.localizations;

    final nameText = ref.watch(
      productNotifierPod.select((form) => form.name),
    );
    final nameTextController = useTextEditingController(text: nameText.value);

    return CustomTextField(
      textController: nameTextController,
      hint: localization.text('productNameLabel'),
      requiredMessage: localization.text('productNameRequiredText'),
      errorText: nameText.error == NameValidation.invalid
          ? localization.text('productNameInvalidText')
          : null,
      inputType: TextInputType.text,
      action: TextInputAction.next,
      onChange: (v) => ref.read(productNotifierPod.notifier).changeName(v),
      isRequired: true,
    );
  }
}

class _PriceText extends HookConsumerWidget {
  const _PriceText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = context.localizations;

    final priceText = ref.watch(
      productNotifierPod.select((form) => form.name),
    );
    final priceTextController = useTextEditingController(text: priceText.value);

    return CustomTextField(
      textController: priceTextController,
      hint: localization.text('productPriceLabel'),
      requiredMessage: localization.text('productPriceRequiredText'),
      errorText: priceText.error == PriceValidation.invalid
          ? localization.text('productPriceInvalidText')
          : null,
      inputType: TextInputType.number,
      action: TextInputAction.next,
      onChange: (v) => ref.read(productNotifierPod.notifier).changePrice(v),
      isRequired: true,
    );
  }
}

class _SubmitButton extends ConsumerWidget {
  const _SubmitButton({Key? key, required this.onSubmit}) : super(key: key);

  final VoidCallback onSubmit;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = context.theme.colorScheme;
    final loginFormState = ref.watch(productNotifierPod);

    return CustomButton(
      text: context.localizations.text('productButtonText').toUpperCase(),
      onPressed: loginFormState.status == FormzStatus.valid ? onSubmit : null,
      paddingHorizontal: 100,
      textColor: loginFormState.status == FormzStatus.valid
          ? null
          : colorScheme.onSurface,
    );
  }
}
