import 'package:calculator/providers/calculator_provider.dart';
import 'package:flutter/material.dart';
import 'package:latext/latext.dart';
import 'package:provider/provider.dart';

class CalculatorValueDisplayWidget extends StatelessWidget {
  const CalculatorValueDisplayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Consumer<CalculatorProvider>(
            builder: (context, calculator, child) {
              return LaTexT(
                laTeXCode: Text(
                  "\$ ${calculator.recentCalculation}\$",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.outline,
                    fontSize: 28,
                  ),
                ),
              );
            },
          ),
          Consumer<CalculatorProvider>(
            builder: (context, calculator, child) {
              return LaTexT(
                laTeXCode: Text(
                  "\$ ${calculator.currentCalculation}\$",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontSize: 44,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
