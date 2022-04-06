import 'package:estudo_provider/components/text_widgets.dart';
import 'package:estudo_provider/provider/pesca_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Pescaria extends StatelessWidget {
  TextEditingController pesoTotalController = TextEditingController();
  TextEditingController pesoController = TextEditingController();

  Pescaria({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pescaria'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Consumer<CalcularPesca>(
          builder: (context, provider, child) {
            return Column(
              children: [
                SizedBox(height: 50),
                TextFieldWidget(
                  pesoController,
                  'Peso',
                  'digite o peso',
                ),
                SizedBox(height: 10),
                TextFieldWidget(
                  pesoTotalController,
                  'peso Total',
                  'digite o peso Total',
                ),
                const SizedBox(height: 10),
                Text(
                  'Valor total da Multa: ${provider.total}',
                  style: TextStyle(fontSize: 22),
                ),
                const SizedBox(height: 70),
                InkWell(
                  onTap: () {
                    provider.valorMulta(
                      double.parse(pesoTotalController.text),
                      double.parse(pesoController.text),
                    );
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
            );
          },
        ),
      ),
    );
  }
}
