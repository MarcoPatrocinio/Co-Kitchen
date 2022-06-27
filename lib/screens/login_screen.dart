import 'dart:convert';

import 'package:co_kitchen/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';

Future<void> loginHttp(BuildContext context, String pLogin, String pSenha) async {
  var dio = Dio();
  final response = await dio.postUri(Uri.parse("http://192.168.0.123:8080/login"), data: jsonEncode({'email': pLogin, 'senha': pSenha}));
  print(response.data);
  final data = response.data.length > 0 ? response.data[0]: null;
  if (data != null) {
    if (data['senha'] == pSenha) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HomeScreen(pLogin)
        ),
      );
    }
  }
  else{
    showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Login Invalido'),
          content: const Text('Usuario ou senha invalidos'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Voltar'),
              child: const Text('Voltar', textAlign: TextAlign.center,),
            ),
          ],
        )
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen>{

  String login = '';
  String senha = '';

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),

        child: Padding(
            padding: const EdgeInsets.all(25),
            child: SingleChildScrollView(
              child: Center(
                  child: Flex(
                      direction: Axis.vertical,
                      children: [
                        Container(
                          height: 150,
                          margin: const EdgeInsets.all(25),
                          child: const Image(image: AssetImage('assets/images/Logo.png')),
                        ),
                        Container(
                          height: 200,
                          margin: const EdgeInsets.all(25),
                          child: Form(
                            child: ListView(
                              children: [
                                TextFormField(
                                  decoration: const InputDecoration(
                                      labelText: 'Email'
                                  ),
                                  textInputAction: TextInputAction.next,
                                  onChanged: (login) => this.login = login,
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                      labelText: 'Senha'
                                  ),
                                  textInputAction: TextInputAction.done,
                                  onChanged: (senha) => this.senha = senha,
                                  obscureText: true,
                                ),
                                ElevatedButton(onPressed: (() => loginHttp(context, login, senha)), child: const Text('Prosseguir'))
                              ],
                            ),
                          ),
                        )
                      ]
                  )
              ),
            )
        ),
      )
    );
  }
}