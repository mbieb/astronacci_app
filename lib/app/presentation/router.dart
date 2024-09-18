import 'package:astronacci_app/app/presentation/app.dart';
import 'package:astronacci_app/app/presentation/pages/home/home_page.dart';
import 'package:astronacci_app/app/presentation/pages/profile/edit_profile_page.dart';
import 'package:astronacci_app/app/presentation/pages/profile/profile_page.dart';
import 'package:astronacci_app/app/presentation/pages/register/register_page.dart';
import 'package:astronacci_app/app/presentation/pages/sign_in/sign_in_page.dart';
import 'package:astronacci_app/app/presentation/pages/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter._();
  static const String main = '/';
  static const String splashPage = '/splash-screen';
  static const String signIn = '/sign-in';
  static const String register = '/register';
  static const String home = '/home';
  static const String profile = '/profile';
  static const String editProfile = '/profile/edit';

  static final GoRouter _router = GoRouter(
    initialLocation: splashPage,
    routes: [
      GoRoute(
        path: main,
        builder: (context, state) => const App(),
      ),
      GoRoute(
        path: splashPage,
        builder: (context, state) => const SplashScreenPage(),
      ),
      GoRoute(
        path: signIn,
        builder: (context, state) => const SignInPage(),
      ),
      GoRoute(
        path: register,
        builder: (context, state) => const RegisterPage(),
      ),
      GoRoute(
        path: home,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: profile,
        builder: (context, state) => const ProfilePage(),
      ),
      GoRoute(
        path: editProfile,
        builder: (context, state) => const EditProfilePage(),
      ),
    ],
  );

  static GoRouter get router => _router;
}

CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation, child: child),
  );
}
