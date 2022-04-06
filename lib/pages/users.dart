import 'package:estudo_provider/models/user_model.dart';
import 'package:estudo_provider/repository/data_repository.dart';
import 'package:flutter/material.dart';

class UserData extends StatefulWidget {
  const UserData({Key? key}) : super(key: key);

  @override
  _UserDataState createState() => _UserDataState();
}

class _UserDataState extends State<UserData> {
  List<UserModel> lista = [];

  @override
  void initState() {
    super.initState();
   getUser().then((map) {
      setState(() {
        lista = map;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de usuarios'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: RefreshIndicator(
          onRefresh: getUser,
          child: ListView.builder(
              itemCount: lista.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 5,
                  child: ListTile(
                    title: Text(
                      lista[index].name.toString(),
                    ),
                    subtitle: Text(
                      lista[index].email.toString(),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}

