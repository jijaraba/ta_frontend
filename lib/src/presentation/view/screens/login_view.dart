import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tresastronautas_frotend/dependencies.dart';
import 'package:tresastronautas_frotend/src/core/forms/login/login_form_state_notifier.dart';
import 'package:tresastronautas_frotend/src/core/forms/user/generic_user_form.dart';
import 'package:tresastronautas_frotend/src/core/presentation/widgets/custom_button.dart';
import 'package:tresastronautas_frotend/src/core/presentation/widgets/custom_text_field.dart';
import 'package:tresastronautas_frotend/src/core/res/res.dart';
import 'package:tresastronautas_frotend/src/core/utils/common_extensions.dart';
import 'package:tresastronautas_frotend/src/presentation/view/widgets/custom_loading.dart';
import 'package:tresastronautas_frotend/src/presentation/viewmodels/login/login_state.dart';

class LoginView extends ConsumerStatefulWidget {
  const LoginView({Key? key, this.uid, this.email}) : super(key: key);

  final String? uid;
  final String? email;

  @override
  ConsumerState<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends ConsumerState<LoginView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final localization = context.localizations;
    final loginState = ref.watch(loginViewModelPod);

    ref.listen(
      loginViewModelPod,
      (_, LoginState state) => _onChangeState(context, state),
    );

    return Stack(
      children: <Widget>[
        Scaffold(
          backgroundColor: colorScheme.background,
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: colorScheme.background,
            ),
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 10,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 80,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Image.asset(
                          Assets.logoS,
                          width: 100,
                          height: 100,
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 16),
                          child: _EmailText(),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 16),
                          child: _PasswordText(),
                        ),
                      ],
                    ),
                    Center(
                      child: Container(
                        padding: const EdgeInsets.only(top: 30, bottom: 5),
                        alignment: Alignment.center,
                        child: _SubmitButton(
                          onSubmit: () => ref
                              .read(loginViewModelPod.notifier)
                              .signInUserPassword(
                                ref.read(loginNotifierPod),
                              ),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: CustomButton(
                          onPressed: () => context.pushNamed('register'),
                          text: localization
                              .text('continueButtonText')
                              .toUpperCase(),
                          isTextButton: true,
                          textColor: UIColors.textGrey,
                          elevation: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        if (loginState.isLoading)
          CustomLoading(
            circularLoadingColor: colorScheme.primary,
          ),
      ],
    );
  }

  void _onChangeState(BuildContext context, LoginState state) {
    if (state.isSuccess) context.go('/home');
    final localization = context.localizations;
    final message = localization.loginErrorMessage(state.erroType);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}

class _EmailText extends HookConsumerWidget {
  const _EmailText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = context.localizations;

    final emailText = ref.watch(
      loginNotifierPod.select((form) => form.email),
    );
    final emailTextController = useTextEditingController(text: emailText.value);

    return CustomTextField(
      textController: emailTextController,
      hint: localization.text('emailLabel'),
      requiredMessage: localization.text('emailRequiredText'),
      errorText: emailText.error == EmailValidation.invalid
          ? localization.text('emailInvalidText')
          : null,
      inputType: TextInputType.emailAddress,
      action: TextInputAction.next,
      onChange: (v) => ref.read(loginNotifierPod.notifier).changeEmail(v),
      isRequired: true,
    );
  }
}

class _PasswordText extends HookConsumerWidget {
  const _PasswordText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = context.localizations;

    final passwordText = ref.watch(
      loginNotifierPod.select((form) => form.password),
    );
    final passwordTextController = useTextEditingController(
      text: passwordText.value,
    );

    return CustomTextField(
      textController: passwordTextController,
      hint: localization.text('passwordLabel'),
      requiredMessage: localization.text('passwordRequiredText'),
      errorText: passwordText.error == PasswordValidation.invalid
          ? localization.text('passwordInvalidText')
          : null,
      onChange: (v) => ref.read(loginNotifierPod.notifier).changePassword(v),
      isRequired: true,
      hasPassword: true,
    );
  }
}

class _SubmitButton extends ConsumerWidget {
  const _SubmitButton({Key? key, required this.onSubmit}) : super(key: key);

  final VoidCallback onSubmit;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = context.theme.colorScheme;
    final loginFormState = ref.watch(loginNotifierPod);

    print(loginFormState.status);

    return CustomButton(
      text: context.localizations.text('loginButtonText').toUpperCase(),
      onPressed: loginFormState.status == FormzStatus.valid ? onSubmit : null,
      paddingHorizontal: 100,
      textColor: loginFormState.status == FormzStatus.valid
          ? null
          : colorScheme.onSurface,
    );
  }
}
