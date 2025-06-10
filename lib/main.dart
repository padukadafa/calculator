import 'package:calculator/core/themes/theme.dart';
import 'package:calculator/pages/calculator_page.dart';
import 'package:calculator/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      builder: (context, child) {
        final provider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: MaterialTheme.lightScheme(),
            useMaterial3: true,
          ),
          darkTheme: ThemeData(
            colorScheme: MaterialTheme.darkScheme(),
            useMaterial3: true,
          ),
          themeMode: provider.themeMode,
          home: CalculatorPage(),
        );
      },
    );
  }
}
