import 'package:flutter/material.dart';
import 'package:astronacci_app/app/presentation/constants/colors.dart';
import 'package:astronacci_app/app/presentation/constants/text_style.dart';
import 'package:astronacci_app/app/presentation/helpers/ui_helper.dart';
import 'package:astronacci_app/app/presentation/widgets/app_scaffold.dart';
import 'package:astronacci_app/generated/l10n.dart';
import 'package:shimmer/shimmer.dart';

part './widgets/shimmer.dart';

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
    I10n i10n = I10n.of(context);
    return AppScaffold(
        appBar: AppBar(
          title: Text(
            'Home',
            style: cTextBold2XL,
          ),
        ),
        body: Container());
  }
}
