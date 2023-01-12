import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';

class CalculatorButtonView extends StatelessWidget {
  BuildContext parentContext;
  Color? color;
  Widget? child;
  double size;
  void Function()? onTap;
  CalculatorButtonView(this.parentContext,
      {super.key,
      this.color = Colors.grey,
      this.child,
      this.size = 0.2,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(parentContext).size.width * size,
      height: MediaQuery.of(parentContext).size.width * size,
      child: Material(
        borderRadius: BorderRadius.circular(10000),
        color: color,
        child: InkWell(
          borderRadius: BorderRadius.circular(10000),
          onTap: onTap,
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
