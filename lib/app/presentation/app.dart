import 'package:astronacci_app/app/application/main_tab/main_tab_cubit.dart';
import 'package:astronacci_app/app/domain/main_tab/main_tab_view.dart';
import 'package:astronacci_app/app/presentation/constants/colors.dart';
import 'package:astronacci_app/app/presentation/pages/home/home_page.dart';
import 'package:astronacci_app/app/presentation/pages/profile/profile_page.dart';
import 'package:astronacci_app/app/presentation/widgets/alert.dart';
import 'package:astronacci_app/app/presentation/widgets/app_scaffold.dart';
import 'package:astronacci_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part './widgets/bottom_navbar.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MainTabCubit>(
          create: (context) => MainTabCubit(),
        ),
      ],
      child: const AppBody(),
    );
  }
}

class AppBody extends StatelessWidget {
  const AppBody({super.key});

  Future<bool> _onWillPopScope(BuildContext context, I10n i10n) async {
    Alert.option(
      context: context,
      title: i10n.alertConfirm,
      body: i10n.alertQuit,
      positiveText: i10n.yes,
      cancelTextColor: Colors.black,
      positiveAction: () {
        SystemNavigator.pop();
      },
    );
    return true;
  }

  @override
  Widget build(BuildContext context) {
    I10n i10n = I10n.of(context);
    return BlocBuilder<MainTabCubit, MainTabView>(
      builder: (context, view) {
        return PopScope(
          onPopInvoked: (_) async => _onWillPopScope(context, i10n),
          child: AppScaffold(
            bottomNavigationBar: const _BottomNavigationBar(),
            body: view.map(
              home: (_) => const HomePage(),
              profile: (_) => const ProfilePage(),
            ),
          ),
        );
      },
    );
  }
}
