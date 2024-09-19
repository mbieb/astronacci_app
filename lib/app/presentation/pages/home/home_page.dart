import 'package:astronacci_app/app/application/auth/auth_bloc.dart';
import 'package:astronacci_app/app/domain/user/user.dart';
import 'package:astronacci_app/app/presentation/constants/dimens.dart';
import 'package:astronacci_app/app/presentation/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:astronacci_app/app/presentation/constants/colors.dart';
import 'package:astronacci_app/app/presentation/constants/text_style.dart';
import 'package:astronacci_app/app/presentation/helpers/ui_helper.dart';
import 'package:astronacci_app/app/presentation/widgets/app_scaffold.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:shimmer/shimmer.dart';

part './widgets/shimmer.dart';
part './widgets/user_card.dart';
part './widgets/user_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _HomeBodyPage();
  }
}

class _HomeBodyPage extends StatelessWidget {
  const _HomeBodyPage();

  @override
  Widget build(BuildContext context) {
    context.read<AuthBloc>().add(const AuthEvent.getUserList());
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return AppScaffold(
          appBar: AppBar(
            title: Text(
              'List Users',
              style: cTextBold2XL,
            ),
          ),
          body: Padding(
            padding: padding(all: 16).copyWith(bottom: 0),
            child: Column(
              children: [
                const PrimaryTextField(
                  prefixIcon: Icon(
                    Icons.search,
                    color: cColorGrey4,
                  ),
                  hintText: 'Search User',
                ),
                gapH12,
                Expanded(
                  child: state.isFetchItemLoading
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : _UserList(state: state),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
