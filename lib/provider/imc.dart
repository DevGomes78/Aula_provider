import 'package:flutter/material.dart';

class CalcImc extends ChangeNotifier {
  int? peso;
  int? altura;
  double? imc;
  double? calcular;
  String? text = '';

  CalcImc({
    this.peso,
    this.altura,
    this.imc,
    this.calcular,
    this.text,
  });

  calcImc(peso,altura) {
    imc = (peso! / (altura! * altura!));
    notifyListeners();
  }

  resultado() {
    if (imc! <= 18.5) {
      return text = 'magreza';
    } else if (imc! >= 18.6 && imc! < 24.9) {
      return text = 'normal';
    } else if (imc! >= 24.9 && imc! < 29.9) {
      return text = 'gordinho';
    } else if (imc! >= 29.9 && imc! < 34.9) {
      return text = 'gordo';
    } else if (imc! >= 34.9 && imc! < 39.9) {
      return text = 'gordao';
    }
  }
}
