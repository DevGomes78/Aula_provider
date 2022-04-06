import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  double? nota1;
  double? nota2;
  double? nota3;
  double? nota4;
  double? total;
  String? text;

  AppState({
    this.nota1,
    this.nota2,
    this.nota3,
    this.nota4,
    this.total,
    this.text,
  });

  calculaNota(nota1, nota2, nota3, nota4) {
    total = (nota1! + nota2! + nota3! + nota4!) / 4;

    notifyListeners();
  }

  verificarNotas() {
    if (total! == 7) {
      return text = 'recuperação';
    } else if (total! < 7) {
      return text = 'repetiu';
    } else if (total! > 7) {
      return text = ' passou';
    }
  }
}
