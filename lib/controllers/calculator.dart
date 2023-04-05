

import 'package:get/get.dart';

class CalulatorController extends GetxController{
  var operation= '+'.obs;
  var firstNumber= '20'.obs;
  var secondNumber='30'.obs;
  var mathResult ='50'.obs;


void resetAll(){
  firstNumber.value ='0';
  secondNumber.value = '0';
  mathResult.value = '0';
  operation.value = '';
}
  
addNumber (String number){
  if(mathResult.value=='0')return mathResult.value= number;

  mathResult.value= mathResult.value + number;

}

}