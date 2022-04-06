import 'package:estudo_provider/pages/pescaria.dart';
import 'package:estudo_provider/pages/users.dart';
import 'package:flutter/material.dart';
import 'calcular_vendas.dart';
import 'home_page.dart';
import 'imc.dart';

class Principal extends StatelessWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Principal'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
              ),
              child: Text(
                'Acesse sua Conta!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Calculo Imc'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Imc()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.email),
              title: const Text('Calcular Notas'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.shopping_cart),
              title: const Text('Calcular Vendas'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Vendas()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.shopping_cart),
              title: const Text('Calcular Vendas'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UserData()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.shop),
              title: const Text('Calcular Pescaria'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Pescaria()));
              },
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configuraçoes'),
            ),
          ],
        ),
      ),
    );
  }
}
