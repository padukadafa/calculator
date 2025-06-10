import 'package:calculator/providers/calculator_provider.dart';
import 'package:flutter/material.dart';
import 'package:latext/latext.dart';
import 'package:provider/provider.dart';

class CalculatorValueDisplayWidget extends StatelessWidget {
  CalculatorValueDisplayWidget({super.key});
  final displayScrollController = ScrollController();
  final recentScrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<CalculatorProvider>(
              builder: (context, calculator, child) {
                return LaTexT(
                  laTeXCode: Text(
                    "\$ ${calculator.recentCalculation}\$",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.outline,
                      fontSize: 32,
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 16),
            Consumer<CalculatorProvider>(
              builder: (context, calculator, child) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  displayScrollController.jumpTo(
                    displayScrollController.position.maxScrollExtent,
                  );
                });
                return SingleChildScrollView(
                  controller: displayScrollController,
                  scrollDirection: Axis.horizontal,
                  child: LaTexT(
                    laTeXCode: Text(
                      "\$ ${calculator.currentCalculation}\$",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontSize: 56,
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
