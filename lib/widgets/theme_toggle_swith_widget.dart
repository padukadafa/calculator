import 'package:calculator/providers/theme_provider.dart';
import 'package:flutter/material.dart';

class ThemeToggleSwithWidget extends StatelessWidget {
  const ThemeToggleSwithWidget({super.key, required this.provider});

  final ThemeProvider provider;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: provider.themeMode == ThemeMode.dark,
      onChanged: (val) {
        provider.setTheme(val ? ThemeMode.dark : ThemeMode.light);
      },
      thumbIcon: WidgetStateProperty.resolveWith<Icon?>((
        Set<WidgetState> states,
      ) {
        if (states.contains(WidgetState.selected)) {
          return const Icon(Icons.light_mode);
        }
        return Icon(Icons.dark_mode);
      }),
    );
  }
}
