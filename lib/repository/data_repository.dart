import 'dart:convert';

import 'package:estudo_provider/models/user_model.dart';
import 'package:http/http.dart' as http;


  Future<List<UserModel>> getUser() async {
    List<UserModel> lista = [];
    final url = Uri.parse('https://jsonplaceholder.typicode.com/users');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      result.forEach(
        (item) => lista.add(
          UserModel.fromJson(item),
        ),
      );
      return lista;
    }else{
      throw Exception('erro');
    }
  }

