import 'package:flutter/material.dart';

class CalculaVendas extends ChangeNotifier {
  int? quantidade;
  double? valor;
  double? total;
  double? valtotal;
  String? infoText;

  CalculaVendas({
    this.quantidade,
    this.valor,
    this.total,
    this.valtotal,
    this.infoText,
  });

  Calcular(quantidade,valor) {
    total = (valor! * quantidade);
    if (quantidade! <= 5) {
      valtotal = total! * (100 - 2) / 100;
      infoText = '2% Desc';
    } else if (quantidade! >= 5 && quantidade! <= 10) {
      valtotal = total! *(100 - 5) / 100;
      infoText = '5% Desc';
    } else if (quantidade! >= 10) {
      valtotal = total! * (100 - 10) / 100;
      infoText = '10% Desc';
    }
    notifyListeners();
  }
}