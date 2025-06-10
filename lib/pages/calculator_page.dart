import 'package:calculator/providers/theme_provider.dart';
import 'package:calculator/widgets/reuseable_safe_area.dart';
import 'package:calculator/widgets/theme_toggle_swith_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemeProvider>(context);
    return ReuseableSafeArea(
      themeMode: provider.themeMode,
      child: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [ThemeToggleSwithWidget(provider: provider)],
          ),
        ),
      ),
    );
  }
}
