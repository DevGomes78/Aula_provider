import 'package:flutter/material.dart';

class CalcularPesca extends ChangeNotifier {
  double? peso;
  double? pesoTotal;
  double? total;

  CalcularPesca({
    this.peso,
    this.pesoTotal,
    this.total,
  });

  valorMulta(
    peso,
    pesoTotal,
  ) {
    if (peso > 50) {
      total = (pesoTotal - peso) * 4;
      notifyListeners();
    }
  }
}
