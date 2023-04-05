import 'package:calculadora/controllers/calculator.dart';
import 'package:calculadora/widgets/math_results.dart';
import 'package:flutter/material.dart';
import 'package:calculadora/widgets/calc_button.dart';
import 'package:get/get.dart';

class CalculatorScreen extends StatelessWidget {
  final caluladoraCtrl = Get.put(CalulatorController());
  CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: Container(),
            ),
            MathResults(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                  text: 'AC',
                  bgColor: const Color(0xffA5A5A5),
                  onPressed: () => caluladoraCtrl.resetAll(),
                ),
                CalculatorButton(
                  text: '+/-',
                  bgColor: const Color(0xffA5A5A5),
                  onPressed: () => caluladoraCtrl.changeSign(),
                ),
                CalculatorButton(
                  text: 'del',
                  bgColor: const Color(0xffA5A5A5),
                  onPressed: () => caluladoraCtrl.deleteLastResult(),
                ),
                CalculatorButton(
                  text: '/',
                  bgColor: const Color(0xffF0A23B),
                  onPressed: () => caluladoraCtrl.selectOperation('/'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                  text: '7',
                  onPressed: () => caluladoraCtrl.addNumber('7'),
                ),
                CalculatorButton(
                  text: '8',
                  onPressed: () =>caluladoraCtrl.addNumber('8'),
                ),
                CalculatorButton(
                  text: '9',
                  onPressed: () => caluladoraCtrl.addNumber('9'),
                ),
                CalculatorButton(
                  text: 'X',
                  bgColor: const Color(0xffF0A23B),
                  onPressed: () =>caluladoraCtrl.selectOperation('X'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                  text: '4',
                  onPressed: () =>caluladoraCtrl.addNumber('4'),
                ),
                CalculatorButton(
                  text: '5',
                  onPressed: () =>caluladoraCtrl.addNumber('5'),
                ),
                CalculatorButton(
                  text: '6',
                  onPressed: () =>caluladoraCtrl.addNumber('6'),
                ),
                CalculatorButton(
                  text: '-',
                  bgColor: const Color(0xffF0A23B),
                  onPressed: () => caluladoraCtrl.selectOperation('-'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                  text: '1',
                  onPressed: () =>caluladoraCtrl.addNumber('1'),
                ),
                CalculatorButton(
                  text: '2',
                  onPressed: () => caluladoraCtrl.addNumber('2'),
                ),
                CalculatorButton(
                  text: '3',
                  onPressed: () => caluladoraCtrl.addNumber('3'),
                ),
                CalculatorButton(
                  text: '+',
                  bgColor: const Color(0xffF0A23B),
                  onPressed: () => caluladoraCtrl.selectOperation('+'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                  text: '0',
                  big: true,
                  onPressed: () => caluladoraCtrl.addNumber('0'),
                ),
                CalculatorButton(
                  text: '.',
                  onPressed: () => caluladoraCtrl.addDecimal(),
                ),
                CalculatorButton(
                  text: '=',
                  bgColor: const Color(0xffF0A23B),
                  onPressed: () => caluladoraCtrl.calculateResponce(),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
