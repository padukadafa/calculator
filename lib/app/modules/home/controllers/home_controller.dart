import 'package:expressions/expressions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:calculator/app/modules/home/views/expression_view.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  final expression = "".obs;
  final isBrackets = false.obs;
  final log = "".obs;
  final answer = "".obs;
  final danger = "".obs;
  bool ishaveDanger = false;
  bool isHasCleared = true;
  bool isMinus = false;

  // controller

  final expressionController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
  void newExpression() {
    if (!isHasCleared) {
      log.value = expression.value;
      expression.value = '';

      isHasCleared = true;
    }
  }

  void addExpression(String expression) {
    newExpression();
    if (this.expression.value.length > 30) {
      danger.value = "Expression can't more than 30";
    } else {
      this.expression.value = this.expression.value + expression;
      update();
    }
  }

  void addBracketsExpression() {
    newExpression();
    if (this.expression.value.length > 30) {
      danger.value = "Expression can't more than 30";
    } else {
      this.expression.value =
          this.expression.value + (!isBrackets.value ? "(" : ")");
      isBrackets.value = !isBrackets.value;
      update();
    }
  }

  void addPlusMinus() {
    newExpression();
    if (this.expression.value.length > 30) {
      danger.value = "Expression can't more than 30";
    } else {
      if (expression.value.length > 0) {
        print(expression.value[expression.value.length - 1] == "-" && isMinus);
        print(isMinus);
        if (expression.value[expression.value.length - 1] == "-" && isMinus) {
          this.expression.value =
              this.expression.value.substring(0, expression.value.length - 1);
        } else if (expression.value[expression.value.length - 1] != "-") {
          expression.value = expression.value + "-";
          isMinus = true;
        }
      } else {
        expression.value = expression.value + "-";
        isMinus = true;
      }

      update();
    }
  }

  void clearExpression() {
    this.expression.value = "";
    log.value = "";
    answer.value = "";
    isBrackets.value = false;

    update();
  }

  void deleteExpression() {
    newExpression();
    if (this.expression.value.length != 0) {
      if (this.expression.value[this.expression.value.length - 1] == "(" ||
          this.expression.value[this.expression.value.length - 1] == ")") {
        this.isBrackets.value = !this.isBrackets.value;
      }
      this.expression.value =
          this.expression.value.substring(0, expression.value.length - 1);
    }
    this.danger.value = "";
    update();
  }

  void calculate() {
    try {
      final expHasEvaluated =
          expression.value.replaceAll('×', '*').replaceAll('÷', "/");
      Expression exp = Expression.parse(expHasEvaluated);
      final contx = {
        "x": "*",
        "÷": "/",
      };
      final evaluator = ExpressionEvaluator();
      final r = evaluator.eval(exp, contx);
      isHasCleared = false;
      answer.value = r.toString();
      this.danger.value = "";
      isMinus = false;
      isBrackets.value = false;
      ishaveDanger = false;
      update();
    } catch (e) {
      isHasCleared = false;
      this.danger.value = "";
      isMinus = false;
      isBrackets.value = false;
      ishaveDanger = false;
      answer.value = "error";
      update();
    }
  }
}
