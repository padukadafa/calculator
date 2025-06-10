import 'package:calculator/providers/calculator_provider.dart';
import 'package:calculator/widgets/calculator_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculatorKeyboardWidget extends StatelessWidget {
  const CalculatorKeyboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CalculatorProvider>(
      builder: (context, calculator, child) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.6,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButtonWidget(
                    label: "C",
                    backgroundColor:
                        Theme.of(context).colorScheme.errorContainer,
                    textColor: Theme.of(context).colorScheme.onErrorContainer,
                    onTap: () {
                      calculator.clearCurrentCalculation();
                    },
                  ),
                  CalculatorButtonWidget(
                    label: "+/-",
                    backgroundColor:
                        Theme.of(context).colorScheme.secondaryContainer,
                    textColor:
                        Theme.of(context).colorScheme.onSecondaryContainer,
                  ),
                  CalculatorButtonWidget(
                    label: "%",
                    backgroundColor:
                        Theme.of(context).colorScheme.secondaryContainer,
                    textColor:
                        Theme.of(context).colorScheme.onSecondaryContainer,
                    onTap: () {
                      calculator.addToCurrentCalculation("%", "\\%");
                    },
                  ),
                  CalculatorButtonWidget(
                    label: "÷",
                    backgroundColor:
                        Theme.of(context).colorScheme.tertiaryContainer,
                    textColor:
                        Theme.of(context).colorScheme.onTertiaryContainer,
                    onTap: () {
                      calculator.addToCurrentCalculation("/", "÷");
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButtonWidget(label: "7"),
                  CalculatorButtonWidget(label: "8"),
                  CalculatorButtonWidget(label: "9"),
                  CalculatorButtonWidget(
                    label: "×",
                    backgroundColor:
                        Theme.of(context).colorScheme.tertiaryContainer,
                    textColor:
                        Theme.of(context).colorScheme.onTertiaryContainer,

                    onTap: () {
                      calculator.addToCurrentCalculation("*", "×");
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButtonWidget(label: "4"),
                  CalculatorButtonWidget(label: "5"),
                  CalculatorButtonWidget(label: "6"),
                  CalculatorButtonWidget(
                    label: "-",
                    backgroundColor:
                        Theme.of(context).colorScheme.tertiaryContainer,
                    textColor:
                        Theme.of(context).colorScheme.onTertiaryContainer,

                    onTap: () {
                      calculator.addToCurrentCalculation("-", "-");
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButtonWidget(label: "1"),
                  CalculatorButtonWidget(label: "2"),
                  CalculatorButtonWidget(label: "3"),
                  CalculatorButtonWidget(
                    label: "+",
                    backgroundColor:
                        Theme.of(context).colorScheme.tertiaryContainer,
                    textColor:
                        Theme.of(context).colorScheme.onTertiaryContainer,

                    onTap: () {
                      calculator.addToCurrentCalculation("+", "+");
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButtonWidget(label: "."),
                  CalculatorButtonWidget(label: "0"),
                  CalculatorButtonWidget(
                    label: "⌫",
                    backgroundColor:
                        Theme.of(context).colorScheme.primaryContainer,
                    textColor: Theme.of(context).colorScheme.onPrimaryContainer,

                    onTap: () {
                      calculator.deleteCurrentCalculation();
                    },
                  ),
                  CalculatorButtonWidget(
                    label: "=",
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    textColor: Theme.of(context).colorScheme.onPrimary,

                    onTap: () {
                      calculator.calculate();
                    },
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
