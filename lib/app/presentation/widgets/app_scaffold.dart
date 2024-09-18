import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final bool isLoading;
  final PreferredSizeWidget? appBar;
  final Widget? body;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;
  final bool isUseDefaultSafeArea;
  final Color? backgroundColor;

  const AppScaffold({
    this.isLoading = false,
    this.appBar,
    this.body,
    this.bottomNavigationBar,
    this.floatingActionButton,
    this.isUseDefaultSafeArea = true,
    this.backgroundColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Widget? widgetBody = body;
    if (body != null && isUseDefaultSafeArea) {
      widgetBody = SafeArea(
        top: appBar == null,
        child: body!,
      );
    }
    return Material(
      color: backgroundColor,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Scaffold(
            appBar: appBar,
            backgroundColor: Colors.transparent,
            body: widgetBody,
            bottomNavigationBar: bottomNavigationBar,
            floatingActionButton: floatingActionButton,
          ),
          if (isLoading)
            Container(
              color: Colors.black38,
              child: const Center(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.white,
                ),
              ),
            )
        ],
      ),
    );
  }
}
