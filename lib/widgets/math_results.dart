import 'package:calculadora/controllers/calculator.dart';
import 'package:calculadora/widgets/line_separator.dart';
import 'package:calculadora/widgets/main_result.dart';
import 'package:calculadora/widgets/sub_result.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MathResults extends StatelessWidget {
  final caluladoraCtrl = Get.find<CalulatorController>();
   MathResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
      children: [
        SubResult(text: '${caluladoraCtrl.firstNumber}'),
        SubResult(text: '${caluladoraCtrl.operation}'),
        SubResult(text: '${caluladoraCtrl.secondNumber}'),
        LineSeparator(),
        MainResultText(text: '${caluladoraCtrl.mathResult}'),
      ],
    ));
  }
}
