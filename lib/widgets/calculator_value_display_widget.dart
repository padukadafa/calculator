import 'package:calculator/providers/calculator_provider.dart';
import 'package:flutter/material.dart';
import 'package:latext/latext.dart';
import 'package:provider/provider.dart';

class CalculatorValueDisplayWidget extends StatefulWidget {
  const CalculatorValueDisplayWidget({super.key});

  @override
  State<CalculatorValueDisplayWidget> createState() =>
      _CalculatorValueDisplayWidgetState();
}

class _CalculatorValueDisplayWidgetState
    extends State<CalculatorValueDisplayWidget> {
  @override
  void dispose() {
    // TODO: implement dispose
    print("Dispose");
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    print("Did Change Dependencies");
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant CalculatorValueDisplayWidget oldWidget) {
    // TODO: implement didUpdateWidget
    print("didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }

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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Consumer<CalculatorProvider>(
                builder: (context, calculator, child) {
                  return LaTexT(
                    laTeXCode: Text(
                      "\$ ${calculator.currentCalculation}\$",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontSize: 56,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
