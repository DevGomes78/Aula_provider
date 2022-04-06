import 'package:estudo_provider/pages/calcular_vendas.dart';
import 'package:estudo_provider/pages/imc.dart';
import 'package:estudo_provider/pages/principal.dart';
import 'package:estudo_provider/provider/calcular_notas.dart';
import 'package:estudo_provider/provider/imc.dart';
import 'package:estudo_provider/provider/pesca_provider.dart';
import 'package:estudo_provider/provider/venda_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AppState(),
        ),
        ChangeNotifierProvider(
          create: (_) => CalcImc(),
        ),
        ChangeNotifierProvider(
          create: (_) => CalculaVendas(),
        ),
        ChangeNotifierProvider(
          create: (_) => CalcularPesca(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
        ),
        home: Principal(),
      ),
    );
  }
}
