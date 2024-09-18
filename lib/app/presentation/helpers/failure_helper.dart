import 'package:astronacci_app/app/domain/failures/failures.dart';
import 'package:astronacci_app/app/presentation/widgets/alert.dart';
import 'package:astronacci_app/generated/l10n.dart';
import 'package:flutter/cupertino.dart';

void appFailureHandler(
  AppFailure failure,
  BuildContext context,
) {
  I10n i10n = I10n.of(context);
  failure.when(
    error: (error) {
      Alert.notify(context, i10n.alertWarning, error);
    },
    noInternet: () {
      Alert.notify(context, i10n.alertWarning, i10n.alertNoConnection);
    },
    timeout: () {
      Alert.notify(context, i10n.alertWarning, i10n.alertTimeOut);
    },
    unauthorized: () {},
    handled: (error) {},
  );
}
