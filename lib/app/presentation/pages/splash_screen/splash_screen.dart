import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:astronacci_app/app/application/auth/auth_bloc.dart';
import 'package:astronacci_app/app/application/initial/initial_bloc.dart';
import 'package:astronacci_app/app/presentation/constants/images.dart';
import 'package:astronacci_app/app/presentation/helpers/ui_helper.dart';
import 'package:astronacci_app/app/presentation/router.dart';
import 'package:astronacci_app/config/injection.dart';
import 'package:go_router/go_router.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<InitialBloc>()..add(const InitialEvent.started()),
      child: const _SplashScreenPageBody(),
    );
  }
}

class _SplashScreenPageBody extends StatelessWidget {
  const _SplashScreenPageBody();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<InitialBloc, InitialState>(
      listener: (context, state) {
        state.map(
            loading: (_) {},
            unauthenticated: (failure) {
              context.go(AppRouter.signIn);
            },
            authenticated: (authenticated) {
              context
                  .read<AuthBloc>()
                  .add(AuthEvent.patch(user: authenticated.user));
              context.go(AppRouter.main);
            },
            failed: (_) {});
      },
      builder: (context, state) {
        return Scaffold(
            body: Center(
          child: Padding(
            padding: padding(bottom: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircularProgressIndicator(),
              ],
            ),
          ),
        ));
      },
    );
  }
}
