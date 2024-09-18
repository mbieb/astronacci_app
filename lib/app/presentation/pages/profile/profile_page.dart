import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:astronacci_app/app/application/auth/auth_bloc.dart';
import 'package:astronacci_app/app/presentation/constants/colors.dart';
import 'package:astronacci_app/app/presentation/constants/dimens.dart';
import 'package:astronacci_app/app/presentation/constants/text_style.dart';
import 'package:astronacci_app/app/presentation/helpers/ui_helper.dart';
import 'package:astronacci_app/app/presentation/router.dart';
import 'package:astronacci_app/app/presentation/widgets/alert.dart';
import 'package:astronacci_app/app/presentation/widgets/app_scaffold.dart';
import 'package:astronacci_app/app/presentation/widgets/button/primary_button.dart';
import 'package:astronacci_app/generated/l10n.dart';
import 'package:go_router/go_router.dart';

part './widgets/user_info_list.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    I10n i10n = I10n.of(context);
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return AppScaffold(
          body: Padding(
            padding: padding(all: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(64)),
                        child: Image.network(
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return const CircularProgressIndicator();
                          },
                          errorBuilder: (context, error, stackTrace) =>
                              const CircleAvatar(),
                          state.user?.imgUrl ?? '',
                          fit: BoxFit.fill,
                          height: 124,
                          width: 124,
                        ),
                      ),
                      gapH8,
                      Text(
                        state.user?.name ?? '',
                        style: cTextBoldXL,
                      ),
                    ],
                  ),
                ),
                gapH16,
                Container(
                  padding: padding(all: Sizes.p8),
                  decoration: BoxDecoration(
                      border: Border.all(color: cColorGrey3),
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _UserInfoList(
                        icon: const Icon(Icons.email),
                        text: state.user?.email ?? '',
                      ),
                      gapH12,
                      _UserInfoList(
                        icon: const Icon(Icons.male),
                        text: state.user?.gender ?? '',
                      ),
                      gapH12,
                      _UserInfoList(
                        icon: const Icon(Icons.calendar_month),
                        text: state.user?.birthDate ?? '',
                      ),
                      gapH12,
                      _UserInfoList(
                        icon: const Icon(Icons.account_balance_outlined),
                        text: state.user?.province ?? '',
                      ),
                      gapH24,
                      GestureDetector(
                        onTap: () {
                          context.push(AppRouter.editProfile);
                          context
                              .read<AuthBloc>()
                              .add(const AuthEvent.started());
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(),
                            ),
                            const Icon(
                              Icons.edit,
                              size: 16,
                              color: Colors.blue,
                            ),
                            gapW12,
                            Text(
                              'Edit Profile',
                              style: cTextRegSM.copyWith(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                gapH64,
                PrimaryButton(
                  text: i10n.signOut.toUpperCase(),
                  onPressed: () {
                    Alert.option(
                      context: context,
                      title: i10n.alertConfirm,
                      body: i10n.alertLogout,
                      positiveText: i10n.yes,
                      positiveAction: () {
                        context.read<AuthBloc>().add(const AuthEvent.signOut());
                        context.go(AppRouter.signIn);
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
