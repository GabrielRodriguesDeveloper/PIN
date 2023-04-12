import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:security_system/pages/validator/cpfValidator.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var inputCpf = '';
    var inputPassword = '';
    var state = context.watch<MyAppState>;

    return Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextFormField(
                      keyboardType: TextInputType.number,
                      style: new TextStyle(color: Colors.white, fontSize: 20),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "CPF",
                        labelStyle: TextStyle(color: Colors.white),
                      ),
                      onChanged: (cpf) {
                        inputCpf = cpf;
                      },
                    ),
                    const Divider(),
                    TextFormField(
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      style: new TextStyle(color: Colors.white, fontSize: 20),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Senha",
                        labelStyle: TextStyle(color: Colors.white),
                      ),
                      onChanged: (password) {
                        inputPassword = password;
                      },
                    ),
                    const Divider(),
                    ElevatedButton(
                      onPressed: () async {
                        final url = "https://minhaapi.com/login";
                        final headers = {'Content-Type': 'application/json'};
                        final body = json
                            .encode({'cpf': inputCpf, 'senha': inputPassword});
                        final response =
                            await http.post(url, headers: headers, body: body);

                        if (response.statusCode == 200) {
                          // Login realizado com sucesso
                          // Faça algo aqui, como navegar para uma nova página
                        } else {
                          // Erro ao realizar login
                          // Exiba uma mensagem de erro para o usuário
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white),
                      child: const Text("Entrar",
                          style: TextStyle(color: Colors.deepPurple)),
                    ),
                  ]),
            )));
  }
}
