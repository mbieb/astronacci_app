import 'package:astronacci_app/app/application/forgot_password/forgot_password_bloc.dart';
import 'package:astronacci_app/app/presentation/constants/dimens.dart';
import 'package:astronacci_app/app/presentation/constants/text_style.dart';
import 'package:astronacci_app/app/presentation/helpers/failure_helper.dart';
import 'package:astronacci_app/app/presentation/helpers/ui_helper.dart';
import 'package:astronacci_app/app/presentation/widgets/alert.dart';
import 'package:astronacci_app/app/presentation/widgets/app_scaffold.dart';
import 'package:astronacci_app/app/presentation/widgets/button/primary_button.dart';
import 'package:astronacci_app/app/presentation/widgets/text_field.dart';
import 'package:astronacci_app/config/injection.dart';
import 'package:astronacci_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ForgotPasswordBloc>(),
      child: const _ForgotPasswordBodyPage(),
    );
  }
}

class _ForgotPasswordBodyPage extends StatelessWidget {
  const _ForgotPasswordBodyPage();

  @override
  Widget build(BuildContext context) {
    I10n i10n = I10n.of(context);
    return BlocConsumer<ForgotPasswordBloc, ForgotPasswordState>(
      listener: (context, state) {
        state.failureOrSuccessOption.fold(
          () {},
          (either) {
            either.fold(
              (failure) => failure.maybeWhen(
                orElse: () => appFailureHandler(failure, context),
                handled: (handled) => handled.maybeWhen(
                  orElse: () {},
                  error: (message) {
                    Alert.notify(context, i10n.alertWarning, message);
                  },
                ),
              ),
              (success) {
                success.maybeWhen(
                  orElse: () {},
                  success: (user) {},
                  forgotSuccess: () {
                    context.pop();
                    Alert.notify(context, i10n.alertSuccess,
                        'A password reset link has been sent to your email');
                  },
                );
              },
            );
          },
        );
      },
      builder: (context, state) {
        final bloc = context.read<ForgotPasswordBloc>();
        return AppScaffold(
          isLoading: state.isLoading,
          body: Center(
            child: ListView(
              physics: const ScrollPhysics(),
              padding: padding(horizontal: Sizes.p24),
              shrinkWrap: true,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Forgot Password',
                      style: cTextBold2XL,
                    ),
                    gapH16,
                    PrimaryTextField(
                      onChanged: (val) =>
                          bloc.add(ForgotPasswordEvent.emailChanged(val)),
                      error: state.emailFieldErrorToString,
                      keyboardType: TextInputType.emailAddress,
                      hintText: i10n.email,
                      textInputAction: TextInputAction.next,
                      prefixIcon: const Icon(
                        Icons.email_outlined,
                        size: 22,
                      ),
                      inputFormatters: [
                        FilteringTextInputFormatter.singleLineFormatter,
                        FilteringTextInputFormatter.deny(' '),
                      ],
                    ),
                    PrimaryButton(
                      onPressed: state.enableSignInButton
                          ? () {
                              bloc.add(const ForgotPasswordEvent.submit());
                            }
                          : null,
                      text: 'Submit',
                    ),
                    gapH16,
                    InkWell(
                      onTap: () {
                        context.pop();
                      },
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Back to Login?',
                          style: cTextReg.copyWith(
                            fontStyle: FontStyle.italic,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
