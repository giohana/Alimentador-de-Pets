import 'package:flutter/material.dart';
import 'package:flutter_pets/src/components/Hyperlink.dart';
import 'package:flutter_pets/src/components/Input.dart';
import 'package:flutter_pets/src/components/Submit.dart';
import 'package:flutter_pets/src/screens/Home.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Cadastro.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var _ctrlLoginPassword = TextEditingController();
  var _ctrlLoginUser = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _focusSenha = FocusNode();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Form(
      key: _formKey,
      child: Container(
        child: Scaffold(
          body: Center(
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: height * 0.06,
                ),
                Image.asset(
                  "assets/image/dogAndCat.png",
                  height: height * 0.16,
                ),
                SizedBox(
                    height: height * 0.09,
                ),
                Input(
                  TextInputType.text,
                  "Usúario",
                  _ctrlLoginUser,
                  hint: "usuario01",
                  validator: _validateLogin,
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(
                    //  height: 10,
                    height: height * 0.03,
                ),
                Input(
                  TextInputType.number,
                  "Senha",
                  _ctrlLoginPassword,
                  hint: "Senha numérica de 4 dígitos",
                  obscurePassword: true,
                  validator: _validatePassword,
                  textInputAction: TextInputAction.done,
                  focusNode: _focusSenha,
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                SubmitBotton(
                  ctrl: _ctrlLogin,
                  title: 'Entrar',
                ),
                // //Hyperlink(text: 'Esqueci a senha', ctrl: () => launch('https://www.google.com/')),
                SizedBox(
                    //  height: 10,
                    height: height * 0.04,
                ),
                Hyperlink(
                    text: 'Primeiro acesso',
                    ctrl: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Cadastro()))
                        })
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _ctrlLogin() {
    bool formOk = _formKey.currentState.validate();
    if (!formOk) {
      return;
    }

    String user = _ctrlLoginUser.text;
    String password = _ctrlLoginPassword.text;

    print("User: $user, Senha: $password");
    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
  }

  String _validateLogin(String text) {
    if (text.isEmpty) {
      return "Digite o usúario!";
    }
    return null;
  }

  String _validatePassword(String text) {
    if (text.isEmpty) {
      return "Digite a senha!";
    }
    if (text.length <= 3 || text.length > 4) {
      return "A senha deve conter 4 números.";
    }
    return null;
  }
}
