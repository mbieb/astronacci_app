import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:astronacci_app/app/application/auth/auth_bloc.dart';
import 'package:astronacci_app/app/application/register/register_bloc.dart';
import 'package:astronacci_app/app/domain/utils/common_util.dart';
import 'package:astronacci_app/app/presentation/constants/colors.dart';
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
import 'package:image_picker/image_picker.dart';

part './widgets/form.dart';
part './widgets/photo_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RegisterBloc>()
        ..add(
          const RegisterEvent.started(),
        ),
      child: const _RegisterBodyPage(),
    );
  }
}

class _RegisterBodyPage extends StatelessWidget {
  const _RegisterBodyPage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    I10n i10n = I10n.of(context);
    return BlocConsumer<RegisterBloc, RegisterState>(
      listener: (context, state) {
        state.failureOrSuccessOption.fold(
          () {},
          (either) {
            either.fold(
              (failure) => failure.maybeWhen(
                orElse: () => appFailureHandler(failure, context),
                handled: (handled) => handled.maybeWhen(
                  orElse: () {},
                  cancelled: () {
                    context.pop();
                  },
                  error: (message) {
                    Alert.notify(context, i10n.alertWarning, message);
                  },
                ),
              ),
              (success) {
                success.maybeWhen(
                  orElse: () {},
                  takePhotoSuccess: () {
                    context.pop();
                  },
                  success: (user) {
                    context.read<AuthBloc>().add(
                          AuthEvent.patch(user: user),
                        );
                    Alert.notifyAction(
                      context,
                      i10n.alertSuccess,
                      i10n.alertLogin,
                      positiveAction: () {
                        context.go(AppRouter.main);
                      },
                    );
                  },
                );
              },
            );
          },
        );
      },
      builder: (context, state) {
        return AppScaffold(
          backgroundColor: themeData.scaffoldBackgroundColor,
          isLoading: state.isLoading,
          body: ListView(
            padding: padding(vertical: Sizes.p24),
            shrinkWrap: true,
            children: [
              _Form(state),
            ],
          ),
        );
      },
    );
  }
}
