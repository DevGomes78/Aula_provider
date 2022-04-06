import 'package:estudo_provider/provider/calcular_notas.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/text_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nota1controller = TextEditingController();
    TextEditingController nota2controller = TextEditingController();
    TextEditingController nota3controller = TextEditingController();
    TextEditingController nota4controller = TextEditingController();

    void clearText() {
      nota4controller.clear();
      nota1controller.clear();
      nota2controller.clear();
      nota3controller.clear();
    }

    // AppState provider = Provider.of<AppState>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aula Provider'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              clearText();
            },
            icon: const Icon(
              Icons.refresh,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Center(
        child: Consumer<AppState>(builder: (context, providerValue, _) {
          providerValue.text == null
              ? providerValue.text = ''
              : providerValue.text;
          providerValue.total == null
              ? providerValue.total = 0
              : providerValue.total;

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFieldWidget(
                  nota1controller,
                  'Nota1',
                  'digite a Nota',
                ),
                SizedBox(height: 10),
                TextFieldWidget(
                  nota2controller,
                  'Nota2',
                  'digite a segunda Nota',
                ),
                SizedBox(height: 10),
                TextFieldWidget(
                  nota3controller,
                  'Nota3',
                  'digite a terceira Nota',
                ),
                SizedBox(height: 10),
                TextFieldWidget(
                  nota4controller,
                  'Nota4',
                  'digite a quarta Nota',
                ),
                SizedBox(height: 20),
                Card(
                  elevation: 5,
                  child: Text(
                    'Nota Final ${providerValue.total}',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                SizedBox(height: 10),
                Card(
                  elevation: 5,
                  child: Text(
                    'situação: ${providerValue.text}',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                SizedBox(height: 40),
                InkWell(
                  onTap: () {
                    providerValue.calculaNota(
                      double.parse(nota1controller.text),
                      double.parse(nota2controller.text),
                      double.parse(nota3controller.text),
                      double.parse(nota4controller.text),
                    );
                    providerValue.verificarNotas();
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
                      'Calcular Nota',
                      style: TextStyle(
                        color: Colors.white,fontSize: 22                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
