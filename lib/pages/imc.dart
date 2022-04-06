import 'package:estudo_provider/components/text_widgets.dart';
import 'package:estudo_provider/provider/calcular_notas.dart';
import 'package:estudo_provider/provider/imc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Imc extends StatefulWidget {
  @override
  State<Imc> createState() => _ImcState();
}

class _ImcState extends State<Imc> {
  TextEditingController pesoController = TextEditingController();

  TextEditingController alturaController = TextEditingController();

  void clearText() {
    pesoController.clear();
    alturaController.clear();
  }

  @override
  Widget build(BuildContext context) {
    CalcImc provider = Provider.of<CalcImc>(context);
    provider.text == null ? provider.text = '' : provider.text;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora IMC'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              clearText();
              setState(() {
                provider.text = '';
              });
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/coracao.png',
              color: Colors.red,
              height: 250,
            ),
            TextFieldWidget(
              pesoController,
              'Peso',
              'digite o peso',
            ),
            const SizedBox(height: 10),
            TextFieldWidget(
              alturaController,
              'Altura',
              'digite a Altura',
            ),
            const SizedBox(height: 20),
            Text(
              'Situação: ${provider.text}',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 50),
            InkWell(
              onTap: () {
                provider.calcImc(
                  double.parse(pesoController.text),
                  double.parse(alturaController.text),
                );
                provider.resultado();
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.blueAccent,
                ),
                child: const Text(
                  'Calcular',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
