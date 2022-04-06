import 'package:estudo_provider/components/text_widgets.dart';
import 'package:estudo_provider/provider/venda_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Vendas extends StatelessWidget {
  TextEditingController qtdeController = TextEditingController();
  TextEditingController valController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // CalculaVendas provider = Provider.of<CalculaVendas>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Vendas'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Consumer<CalculaVendas>(builder: (
          context,
          provider,
          child,
        ) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              TextFieldWidget(
                qtdeController,
                'Quantidade',
                ' Digite a quantidade',
              ),
              SizedBox(height: 20),
              TextFieldWidget(
                valController,
                'Valor',
                ' Digite o Valor',
              ),
              SizedBox(height: 30),
              Text(
                'Valor Total: R\$ ${provider.valtotal }  ${provider.infoText}',
                style: TextStyle(fontSize: 22),
              ),
              SizedBox(height: 30),
              InkWell(
                onTap: () {
                  provider.Calcular(
                    int.parse(qtdeController.text),
                    double.parse(valController.text),
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
        }),
      ),
    );
  }
}
