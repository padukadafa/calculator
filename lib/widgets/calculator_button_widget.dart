import 'package:calculator/providers/calculator_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculatorButtonWidget extends StatelessWidget {
  final void Function()? onTap;
  final String label;
  final Color? backgroundColor;
  final Color? textColor;
  const CalculatorButtonWidget({
    super.key,
    this.onTap,
    this.backgroundColor,
    this.textColor,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(12),
      color:
          backgroundColor ?? Theme.of(context).colorScheme.surfaceContainerHigh,
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
              color: textColor ?? Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ),
      ),
    );
  }
}
