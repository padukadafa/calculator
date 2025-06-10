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
                    onTap: () {
                      calculator.clearCurrentCalculation();
                    },
                  ),
                  CalculatorButtonWidget(label: "+/-"),
                  CalculatorButtonWidget(
                    label: "%",
                    onTap: () {
                      calculator.addToCurrentCalculation("%", "\\%");
                    },
                  ),
                  CalculatorButtonWidget(
                    label: "÷",
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
                    onTap: () {
                      calculator.deleteCurrentCalculation();
                    },
                  ),
                  CalculatorButtonWidget(
                    label: "=",
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
