import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:astronacci_app/app/application/auth/auth_bloc.dart';
import 'package:astronacci_app/app/application/sign_in/sign_in_bloc.dart';
import 'package:astronacci_app/app/presentation/constants/dimens.dart';
import 'package:astronacci_app/app/presentation/constants/text_style.dart';
import 'package:astronacci_app/app/presentation/helpers/failure_helper.dart';
import 'package:astronacci_app/app/presentation/helpers/ui_helper.dart';
import 'package:astronacci_app/app/presentation/router.dart';
import 'package:astronacci_app/app/presentation/widgets/alert.dart';
import 'package:astronacci_app/app/presentation/widgets/app_scaffold.dart';
import 'package:astronacci_app/app/presentation/widgets/button/primary_button.dart';
import 'package:astronacci_app/app/presentation/widgets/text_field.dart';
import 'package:astronacci_app/config/injection.dart';
import 'package:astronacci_app/generated/l10n.dart';
import 'package:go_router/go_router.dart';

part './widgets/form.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<SignInBloc>()..add(const SignInEvent.started()),
      child: const _SignInBodyPage(),
    );
  }
}

class _SignInBodyPage extends StatelessWidget {
  const _SignInBodyPage();

  @override
  Widget build(BuildContext context) {
    I10n i10n = I10n.of(context);
    return BlocConsumer<SignInBloc, SignInState>(
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
                  success: (user) {
                    context.read<AuthBloc>().add(
                          AuthEvent.patch(user: user),
                        );
                    context.go(AppRouter.main);
                  },
                );
              },
            );
          },
        );
      },
      builder: (context, state) {
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
                      i10n.signIn,
                      style: cTextBold2XL,
                    ),
                    gapH16,
                    _Form(state),
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
