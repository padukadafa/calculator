import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:calculator/app/modules/home/views/calculator_button_view.dart';
import 'package:calculator/app/modules/home/views/expression_view.dart';
import 'package:calculator/app/modules/home/views/keypad_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xF252525),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: ExpressionView(controller: controller)),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: KeyPad(
                  controller: controller,
                ),
              )
            ],
          )),
    );
  }
}
