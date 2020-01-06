import 'package:mobx/mobx.dart';

part 'imc_store.g.dart';

class IMCStore = _IMCStore with _$IMCStore;

abstract class _IMCStore with Store{
  @observable
  String height = '';

  @observable
  String weight = '';

  @observable
  String result = '';

  @action
  void setHeight(String value){
    height = value;
  }

  @action
  void setWeight(String value){
    weight = value;
  }

  @action
  void calcImc(){
   var bmi = int.parse(weight) / (double.parse(height) * double.parse(height)/10000);

   if (bmi < 18.6) {
     result = "Abaixo do Peso (${bmi.toStringAsPrecision(2)})";
   } else if (bmi >= 18.6 && bmi <= 24.9) {
     result = "Peso Ideal (${bmi.toStringAsPrecision(2)})";
   } else if (bmi >= 24.9 && bmi <= 29.9) {
     result = "Levemente acima do peso (${bmi.toStringAsPrecision(2)})";
   } else if (bmi >= 24.9 && bmi <= 34.9) {
     result = "Obesidade Grau I (${bmi.toStringAsPrecision(2)})";
   } else if (bmi >= 34.9 && bmi <= 39.9) {
     result = "Obesidade Grau II (${bmi.toStringAsPrecision(2)})";
   } else if (bmi >= 40) {
     result = "Obesidade Grau III (${bmi.toStringAsPrecision(2)})";
   }

  }

}