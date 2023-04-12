import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:security_system/pages/validator/cpfValidator.dart';

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
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white),
                      child: const Text("Entrar",
                          style: TextStyle(color: Colors.deepPurple)),
                    ),
                  ]),
            )));
  }
}
