import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ReuseableSafeArea extends StatelessWidget {
  final Widget child;
  final ThemeMode themeMode;
  const ReuseableSafeArea({
    super.key,
    required this.child,
    this.themeMode = ThemeMode.light,
  });

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Theme.of(context).colorScheme.surface,
        statusBarBrightness:
            themeMode == ThemeMode.light ? Brightness.dark : Brightness.light,
        statusBarIconBrightness:
            themeMode == ThemeMode.light ? Brightness.dark : Brightness.light,
        systemNavigationBarColor: Theme.of(context).colorScheme.surface,
        systemNavigationBarIconBrightness:
            themeMode == ThemeMode.light ? Brightness.dark : Brightness.light,
      ),
      child: SafeArea(child: child),
    );
  }
}
