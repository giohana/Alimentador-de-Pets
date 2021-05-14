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

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Center(
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Image.asset(
                "assets/image/dogAndCat.png",
                height: 60,
              ),
              SizedBox(
                height: 20,
              ),
              Input(
                TextInputType.text,
                'Usúario',
                _ctrlLoginUser,
                validator: _validateLogin,
                hint: "usuario01",
              ),
              SizedBox(
                height: 30,
              ),
              Input(
                TextInputType.number,
                'Senha',
                _ctrlLoginPassword,
                hint: "Senha numérica de 4 dígitos",
                obscurePassword: true,
                validator: _validatePassword,
              ),
              SizedBox(
                height: 30,
              ),
              Input(
                TextInputType.number,
                'Confirmar senha',
                _ctrlLoginPassword,
                obscurePassword: true,
                validator: _validatePassword,
              ),
              Hyperlink(text: 'tabela consumo', ctrl: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => TabelaConsumo()));
              }),
              SubmitBotton(
                ctrl: _ctrlLogin,
                //ctrl: ddd(),
                title: 'Cadastrar',
              ),
            ],
          ),
        ),
      ),
    );
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

    void _ctrlLogin() {
    bool formOk = _formKey.currentState.validate();
    if (!formOk) {
      return;
    }

    String user = _ctrlLoginUser.text;
    String password = _ctrlLoginPassword.text;

    print("User: $user, Senha: $password");
     Navigator.push(
         context, MaterialPageRoute(builder: (context) => TabelaConsumo()));
  }

}
  // void _ctrlLogin() {
  //   bool formOk = _formKey.currentState.validate();
  //   if (!formOk) {
  //     return;
  //   }

  //   String user = _ctrlLoginUser.text;
  //   String password = _ctrlLoginPassword.text;

  //   print("User: $user, Senha: $password");
  //   Navigator.push(
  //       context, MaterialPageRoute(builder: (context) => PetCadastro()));
  // }

  // String _validateLogin(String text) {
  //   if (text.isEmpty) {
  //     return "Digite o usúario!";
  //   }
  //   return null;
  // }

  // String _validatePassword(String text) {
  //   if (text.isEmpty) {
  //     return "Digite a senha!";
  //   }
  //   if (text.length <= 3 || text.length > 4) {
  //     return "A senha deve conter 4 números.";
  //   }
  //   return null;
  // }

  ddd(){

  }