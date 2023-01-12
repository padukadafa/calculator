import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:calculator/app/modules/home/controllers/home_controller.dart';
import 'package:calculator/app/modules/home/views/calculator_button_view.dart';

class KeyPad extends StatelessWidget {
  HomeController controller;
  KeyPad({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButtonView(
                context,
                color: Colors.grey[800],
                child: const Text(
                  "C",
                  style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () => controller.clearExpression(),
              ),
              CalculatorButtonView(
                context,
                color: Colors.grey[800],
                child: const Text(
                  "()",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () => controller.addBracketsExpression(),
              ),
              CalculatorButtonView(
                context,
                color: Colors.grey[800],
                child: const Text(
                  "del",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () => controller.deleteExpression(),
              ),
              CalculatorButtonView(
                context,
                color: Colors.grey[800],
                child: const Text(
                  "÷",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () => controller.addExpression("÷"),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButtonView(
                context,
                color: Colors.grey[900],
                child: const Text(
                  "7",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () => controller.addExpression("7"),
              ),
              CalculatorButtonView(
                context,
                color: Colors.grey[900],
                child: const Text(
                  "8",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () => controller.addExpression("8"),
              ),
              CalculatorButtonView(
                context,
                color: Colors.grey[900],
                child: const Text(
                  "9",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () => controller.addExpression("9"),
              ),
              CalculatorButtonView(
                context,
                color: Colors.grey[800],
                child: const Text(
                  "×",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () => controller.addExpression("×"),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButtonView(
                context,
                color: Colors.grey[900],
                child: const Text(
                  "4",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () => controller.addExpression("4"),
              ),
              CalculatorButtonView(
                context,
                color: Colors.grey[900],
                child: const Text(
                  "5",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () => controller.addExpression("5"),
              ),
              CalculatorButtonView(
                context,
                color: Colors.grey[900],
                child: const Text(
                  "6",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () => controller.addExpression("6"),
              ),
              CalculatorButtonView(
                context,
                color: Colors.grey[800],
                child: const Text(
                  "-",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () => controller.addExpression("-"),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButtonView(
                context,
                color: Colors.grey[900],
                child: const Text(
                  "1",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () => controller.addExpression("1"),
              ),
              CalculatorButtonView(
                context,
                color: Colors.grey[900],
                child: const Text(
                  "2",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () => controller.addExpression("2"),
              ),
              CalculatorButtonView(
                context,
                color: Colors.grey[900],
                child: const Text(
                  "3",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () => controller.addExpression("3"),
              ),
              CalculatorButtonView(
                context,
                color: Colors.grey[800],
                child: const Text(
                  "+",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () => controller.addExpression("+"),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButtonView(
                context,
                color: Colors.grey[900],
                child: const Text(
                  "+/-",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () => controller.addPlusMinus(),
              ),
              CalculatorButtonView(
                context,
                color: Colors.grey[900],
                child: const Text(
                  "0",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () => controller.addExpression("0"),
              ),
              CalculatorButtonView(
                context,
                color: Colors.grey[900],
                child: const Text(
                  ".",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () => controller.addExpression("."),
              ),
              CalculatorButtonView(
                context,
                color: Colors.orange,
                child: const Text(
                  "=",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () => controller.calculate(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
