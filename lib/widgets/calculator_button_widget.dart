import 'package:calculator/providers/calculator_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculatorButtonWidget extends StatelessWidget {
  final void Function()? onTap;
  final String label;
  const CalculatorButtonWidget({super.key, this.onTap, required this.label});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(12),
      color: Theme.of(context).colorScheme.tertiaryContainer,
      child: InkWell(
        onTap:
            onTap ??
            () {
              Provider.of<CalculatorProvider>(
                context,
                listen: false,
              ).addToCurrentCalculation(label, label);
            },
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: MediaQuery.of(context).size.width / 5,
          height: MediaQuery.of(context).size.width / 5,
          alignment: Alignment.center,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 28,
              color: Theme.of(context).colorScheme.onTertiaryContainer,
            ),
          ),
        ),
      ),
    );
  }
}
