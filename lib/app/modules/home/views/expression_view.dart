import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:calculator/app/modules/home/controllers/home_controller.dart';

class ExpressionView extends StatelessWidget {
  HomeController controller;
  ExpressionView({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.centerLeft,
          child: Obx(() => Text(
                controller.danger.value,
                style: TextStyle(color: Colors.red),
              )),
        ),
        Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Obx(() => Text(
                        controller.log.value,
                        style: TextStyle(color: Colors.grey[500], fontSize: 24),
                        overflow: TextOverflow.ellipsis,
                      ))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Obx(
                    () => Container(
                      alignment: Alignment.centerRight,
                      width: MediaQuery.of(context).size.width,
                      child: AutoSizeText(
                        controller.expression.value,
                        style: TextStyle(color: Colors.white, fontSize: 36),
                        maxLines: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Obx(() => Container(
                    alignment: Alignment.centerRight,
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      controller.answer.value,
                      style: TextStyle(color: Colors.grey, fontSize: 30),
                      overflow: TextOverflow.fade,
                    ),
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
