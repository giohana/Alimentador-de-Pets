

import 'package:flutter/material.dart';
import 'package:flutter_pets/src/components/Input.dart';
import 'package:flutter_pets/src/components/Submit.dart';
import 'package:flutter_pets/src/screens/PetCadastro.dart';

class Cadastro extends StatefulWidget {
  Cadastro({Key key}) : super(key: key);

  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Center(
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 120,
              ),
              Input(TextInputType.text, 'Usúario', ddd(),),
              SizedBox(
                height: 40,
              ),
              Input( TextInputType.number, 'Senha', ddd(),),
              SizedBox(
                height: 40,
              ),
              Input(TextInputType.number, 'Confirmar senha', ddd(),),

              SubmitBotton(
                ctrl: () => { Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PetCadastro()))},
                title: 'Cadastrar',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

ddd() {}
