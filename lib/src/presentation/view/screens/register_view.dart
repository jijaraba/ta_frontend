import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tresastronautas_frotend/dependencies.dart';
import 'package:tresastronautas_frotend/src/core/forms/user/generic_user_form.dart';
import 'package:tresastronautas_frotend/src/core/forms/user/states/register_form_state_notifier.dart';
import 'package:tresastronautas_frotend/src/core/presentation/widgets/custom_button.dart';
import 'package:tresastronautas_frotend/src/core/presentation/widgets/custom_text_field.dart';
import 'package:tresastronautas_frotend/src/core/res/res.dart';
import 'package:tresastronautas_frotend/src/core/utils/common_extensions.dart';
import 'package:tresastronautas_frotend/src/presentation/view/widgets/custom_loading.dart';
import 'package:tresastronautas_frotend/src/presentation/viewmodels/register/register_state.dart';

class RegisterView extends ConsumerStatefulWidget {
  const RegisterView({Key? key, this.uid, this.email}) : super(key: key);

  final String? uid;
  final String? email;

  @override
  ConsumerState<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends ConsumerState<RegisterView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    final localization = context.localizations;

    final isLoadingRegister = ref.watch(
      registerViewModelPod.select((s) => s.isLoading),
    );

    ref.listen(
      registerViewModelPod,
      (_, RegisterState state) => _onChangeState(state),
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
                          child: _NameText(),
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
                              .read(registerViewModelPod.notifier)
                              .registerUser(
                                ref.read(registerNotifierPod),
                              ),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: CustomButton(
                          onPressed: () => context.pushNamed('login'),
                          text: localization
                              .text('loginButtonText')
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
        if (isLoadingRegister)
          CustomLoading(
            circularLoadingColor: colorScheme.primary,
          ),
      ],
    );
  }

  void _onChangeState(RegisterState state) {
    if (state.isSuccess) context.go('/home');

    if (state.isError) {
      final localization = context.localizations;

      if (state.errorType == ErrorType.userExists) {
        _showSnackBar(localization.text('existingUserError'));
      } else {
        _showSnackBar(localization.text('genericError'));
      }
    }
  }

  void _showSnackBar(String title) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          title,
          textAlign: TextAlign.center,
        ),
        elevation: 5,
      ),
    );
  }
}

class _NameText extends HookConsumerWidget {
  const _NameText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = context.localizations;

    final nameText = ref.watch(registerNotifierPod.select((form) => form.name));
    final nameTextController = useTextEditingController(text: nameText.value);

    return CustomTextField(
      textController: nameTextController,
      hint: localization.text('nameLabel'),
      requiredMessage: localization.text('nameRequiredText'),
      errorText: nameText.error == NameValidation.invalid
          ? localization.text('nameInvalidText')
          : null,
      inputType: TextInputType.name,
      action: TextInputAction.next,
      onChange: (val) => ref.read(registerNotifierPod.notifier).changeName(val),
      isRequired: true,
      textColor: UIColors.textGrey,
    );
  }
}

class _EmailText extends HookConsumerWidget {
  const _EmailText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = context.localizations;

    final emailText = ref.watch(
      registerNotifierPod.select((form) => form.email),
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
      onChange: (v) => ref.read(registerNotifierPod.notifier).changeEmail(v),
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
      registerNotifierPod.select((form) => form.password),
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
      onChange: (v) => ref.read(registerNotifierPod.notifier).changePassword(v),
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
    final theme = context.theme;
    final colorScheme = theme.colorScheme;

    final registerFormState = ref.watch(registerNotifierPod);

    print(registerFormState.status);

    return CustomButton(
      text: context.localizations.text('continueButtonText').toUpperCase(),
      onPressed: registerFormState.status == FormzStatus.valid ? onSubmit : null,
      paddingHorizontal: 100,
      textColor: registerFormState.status == FormzStatus.valid
          ? null
          : colorScheme.onSurface,
    );
  }
}
