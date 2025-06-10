import 'package:calculator/providers/calculator_provider.dart';
import 'package:calculator/providers/theme_provider.dart';
import 'package:calculator/widgets/calculator_keyboard_widget.dart';
import 'package:calculator/widgets/calculator_value_display_widget.dart';
import 'package:calculator/widgets/reuseable_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemeProvider>(context);
    return ReuseableSafeArea(
      themeMode: provider.themeMode,
      child: ChangeNotifierProvider(
        create: (context) => CalculatorProvider(),
        child: Scaffold(
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CalculatorValueDisplayWidget(),
                CalculatorKeyboardWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
