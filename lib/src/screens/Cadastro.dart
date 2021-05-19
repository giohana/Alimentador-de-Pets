import 'package:flutter/material.dart';
import 'package:flutter_pets/src/components/Hyperlink.dart';
import 'package:flutter_pets/src/components/Input.dart';
import 'package:flutter_pets/src/components/Submit.dart';
import 'package:flutter_pets/src/screens/PetCadastro.dart';
import 'package:flutter_pets/src/screens/TabelaConsumo.dart';

class Cadastro extends StatefulWidget {
  Cadastro({Key key}) : super(key: key);

  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  final _formKey = GlobalKey<FormState>();
  var _ctrlLoginPassword = TextEditingController();
  var _ctrlLoginUser = TextEditingController();
  var _ctrlLoginPasswordConfirm = TextEditingController();

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
                  height: height * 0.05,
                ),
                Image.asset(
                  "assets/image/dogAndCat.png",
                  height: height * 0.12,
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                Input(
                  TextInputType.text,
                  'Usúario',
                  _ctrlLoginUser,
                  hint: 'user123',
                  validator: _validateLogin,
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Input(
                  TextInputType.number,
                  'Senha',
                  _ctrlLoginPassword,
                  obscurePassword: true,
                  hint: 'Senha numérica de 4 dígitos',
                  validator: _validatePassword,
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Input(
                  TextInputType.number,
                  'Confirmar Senha',
                  _ctrlLoginPasswordConfirm,
                  obscurePassword: true,
                  hint: 'Confirme a senha',
                  validator: _validatePasswordConfirm,
                  textInputAction: TextInputAction.done,
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                SubmitBotton(
                  title: 'Cadastrar',
                  ctrl: _ctrlLogin,
                ),
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
    String passwordConfirm = _ctrlLoginPasswordConfirm.text;

    print("User: $user, Senha: $password, Confirmação: $passwordConfirm");
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => PetCadastro()));
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

  String _validatePasswordConfirm(String text) {
    String password = _ctrlLoginPassword.text;

    if (text.isEmpty) {
      return "Confirme a senha!";
    }
    if (text.length <= 3 || text.length > 4) {
      return "A senha deve conter 4 números.";
    }
    if (password != text) {
      return "As senhas são diferentes";
    }
    return null;
  }
}
