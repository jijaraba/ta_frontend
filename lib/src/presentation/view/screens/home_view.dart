import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tresastronautas_frotend/dependencies.dart';
import 'package:tresastronautas_frotend/src/core/forms/search/search_form.dart';
import 'package:tresastronautas_frotend/src/core/forms/search/search_form_state_notifier.dart';
import 'package:tresastronautas_frotend/src/core/hooks/curved_animation_hook.dart';
import 'package:tresastronautas_frotend/src/core/presentation/theme/theme.dart';
import 'package:tresastronautas_frotend/src/core/presentation/widgets/custom_button.dart';
import 'package:tresastronautas_frotend/src/core/presentation/widgets/custom_text_field.dart';
import 'package:tresastronautas_frotend/src/core/presentation/widgets/error_container.dart';
import 'package:tresastronautas_frotend/src/core/presentation/widgets/widgets.dart';
import 'package:tresastronautas_frotend/src/core/res/res.dart';
import 'package:tresastronautas_frotend/src/core/utils/common_extensions.dart';
import 'package:tresastronautas_frotend/src/domain/entities/restaurant_entity.dart';
import 'package:tresastronautas_frotend/src/presentation/view/widgets/restaurant_item.dart';
import 'package:tresastronautas_frotend/src/presentation/viewmodels/common_viewmodel_provider.dart';
import 'package:tresastronautas_frotend/src/presentation/viewmodels/search/search_state.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({Key? key, this.uid, this.email}) : super(key: key);

  final String? uid;
  final String? email;

  @override
  ConsumerState<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  @override
  void initState() {
    super.initState();
    ref..refresh(userLocalPod);
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

    ///Location
    final locationData =
        ref.watch(geolocationDataPod).whenOrNull(data: (data) => data);

    final productData = ref.watch(productDataPod);
    return Scaffold(
      backgroundColor: colorScheme.background,
      body: userData == null
          ? _LoginWrapper()
          : RefreshIndicator(
              color: UIColors.green100,
              onRefresh: () async => ref.refresh(productDataPod),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ///Header
                    _RestaurantHeader(),
                    SizedBox(height: 30),
                    Container(
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              context.go('/product/add');
                            },
                            child: Icon(
                              Icons.playlist_add_circle_sharp,
                              size: 60,
                              color: UIColors.green100,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      child: productData.when(
                        data: (data) => Container(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            children: <Widget>[
                              ///Products
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 10,
                                ),
                                child: _ProductWrapper(
                                  restaurants: data,
                                ),
                              ),
                            ],
                          ),
                        ),
                        loading: () => Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          child: const Center(
                            child: CircularProgressIndicator(),
                          ),
                        ),
                        error: (e, s) => Container(
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30),
                                  child: ErrorContainer(
                                    text: localization.text('genericError'),
                                    subtitle: localization
                                        .text('genericErrorSubtitle'),
                                    onRetryPress: () =>
                                        ref.refresh(productDataPod),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 30,
                                  ),
                                  child: Column(
                                    children: [
                                      CustomButton(
                                        text: context.localizations
                                            .text('logoutText'),
                                        onPressed: () {
                                          ref
                                              .read(userViewModelPod.notifier)
                                              .signOut();
                                          context.go('/login');
                                        },
                                        borderColor: colorScheme.primary,
                                        textColor: colorScheme.primary,
                                        background: colorScheme.surface,
                                        elevation: 0,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                      ),
                      child: Column(
                        children: [
                          Text(
                            userData.user.name,
                            style: textNormal.copyWith(
                              color: UIColors.black,
                            ),
                          ),
                          CustomButton(
                            text: context.localizations.text('logoutText'),
                            onPressed: () {
                              ref
                                  .read(userViewModelPod.notifier)
                                  .signOut()
                                  .then(
                                    (value) => context.go('/login'),
                                  );
                            },
                            borderColor: colorScheme.primary,
                            textColor: colorScheme.primary,
                            background: colorScheme.surface,
                            elevation: 0,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),
            ),
    );
  }
}

class _LoginWrapper extends ConsumerWidget {
  const _LoginWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              Assets.logoS,
              width: 100,
              height: 100,
            ),
            VSpacing(40),
            Text(
              'Iniciar sesión',
              style: h1.copyWith(
                color: UIColors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 30, bottom: 0),
              alignment: Alignment.center,
              child: CustomButton(
                text:
                    context.localizations.text('loginButtonText').toUpperCase(),
                onPressed: () {
                  context.go('/login');
                },
                paddingHorizontal: 100,
                textColor: colorScheme.onSurface,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 5, bottom: 0),
              alignment: Alignment.center,
              child: CustomButton(
                text: context.localizations
                    .text('registerButtonText')
                    .toUpperCase(),
                onPressed: () {
                  context.go('/register');
                },
                isTextButton: true,
                paddingHorizontal: 100,
                textColor: colorScheme.onSurface,
              ),
            ),
          ],
        ),
      ),
    );
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
          Positioned(bottom: 10, child: _SearchWrapper())
        ],
      ),
    );
  }
}

class _SearchWrapper extends ConsumerWidget {
  const _SearchWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(
      searchViewModelPod,
      (_, SearchState state) => ref.refresh(productDataPod),
    );

    return Container(
      color: UIColors.white.withOpacity(0.9),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 0,
      ),
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: _SearchText(),
          ),
          SizedBox(width: 10),
          Container(
            width: 100,
            padding: const EdgeInsets.only(top: 0, bottom: 0),
            alignment: Alignment.center,
            child: _SubmitButton(
                padding: 0,
                onSubmit: () {
                  ref.read(searchViewModelPod.notifier).searchByCity(
                        ref.read(searchNotifierPod),
                      );
                }),
          )
        ],
      ),
    );
  }
}

class _SubmitButton extends ConsumerWidget {
  final double padding;

  const _SubmitButton({
    Key? key,
    required this.onSubmit,
    this.padding = 100,
  }) : super(key: key);

  final VoidCallback onSubmit;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = context.theme.colorScheme;
    final searchFormState = ref.watch(searchNotifierPod);

    return CustomButton(
      text: context.localizations.text('searchButtonText').toUpperCase(),
      onPressed: searchFormState.status == FormzStatus.valid ? onSubmit : null,
      paddingHorizontal: padding,
      textColor: searchFormState.status == FormzStatus.valid
          ? UIColors.white
          : colorScheme.onSurface,
    );
  }
}

class _SearchText extends HookConsumerWidget {
  const _SearchText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = context.localizations;

    final emailText = ref.watch(
      searchNotifierPod.select((form) => form.search),
    );
    final emailTextController = useTextEditingController(text: emailText.value);

    return CustomTextField(
      textController: emailTextController,
      hint: localization.text('searchLabel'),
      requiredMessage: localization.text('searchRequiredText'),
      errorText: emailText.error == SearchValidation.invalid
          ? localization.text('searchInvalidText')
          : null,
      inputType: TextInputType.emailAddress,
      action: TextInputAction.next,
      onChange: (v) => ref.read(searchNotifierPod.notifier).changeSearch(v),
      isRequired: true,
    );
  }
}

class _ProductWrapper extends ConsumerWidget {
  final List<RestaurantEntity> restaurants;

  const _ProductWrapper({Key? key, required this.restaurants})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = context.localizations;

    return Column(
      children: <Widget>[
        for (final restaurant in restaurants)
          GestureDetector(
            onTap: () {
              context.go('/product/edit/${restaurant.id}');
            },
            child: RestaurantItem(
              restaurant: restaurant,
            ),
          ),
      ],
    );
  }
}
