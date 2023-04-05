import 'package:get/get.dart';

class CalulatorController extends GetxController {
  var operation = '+'.obs;
  var firstNumber = '20'.obs;
  var secondNumber = '30'.obs;
  var mathResult = '50'.obs;

  void resetAll() {
    firstNumber.value = '0';
    secondNumber.value = '0';
    mathResult.value = '0';
    operation.value = '';
  }

  changeSign() {
    if (mathResult.value.startsWith('-')) {
      mathResult.value = mathResult.value.replaceFirst('-', '');
    } else {
      mathResult.value = '-${mathResult.value}';
    }
  }

  addNumber(String number) {
    if (mathResult.value == '0') return mathResult.value = number;

    if (mathResult.value == '-0') {
      return mathResult.value = '-$number';
    }
    mathResult.value = mathResult.value + number;
  }

  addDecimal() {
    if (mathResult.contains('.')) return;
    if (mathResult.startsWith('0')) {
      mathResult.value = '0.';
    } else {
      mathResult.value = '${mathResult.value}.';
    }
  }

  selectOperation(String newOperation) {
    operation.value = newOperation;
    firstNumber.value = mathResult.value;
    mathResult.value = '0';
  }

  deleteLastResult() {
    if (mathResult.value.replaceAll('-', '').length > 1) {
      mathResult.value =
          mathResult.value.substring(0, mathResult.value.length - 1);
    } else {
      mathResult.value = '0';
    }
  }

  calculateResponce() {
    double num1 = double.parse(firstNumber.value);
    double num2 = double.parse(mathResult.value);

    secondNumber.value = mathResult.value;
    switch (operation.value) {
      case '+':
        mathResult.value = '${num1 + num2}';
        break;
      case '/':
        mathResult.value = '${num1 / num2}';
        break;
      case '-':
        mathResult.value = '${num1 - num2}';
        break;
      case 'X':
        mathResult.value = '${num1 * num2}';
        break;

      default:
        break;
    }
    if(mathResult.value.endsWith('.0')){
      mathResult.value = mathResult.value.substring(0,mathResult.value.length -2);
    }
  }
}
