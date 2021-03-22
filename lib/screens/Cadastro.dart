import 'package:flutter/material.dart';
import 'package:flutter_pets/components/Input.dart';
import 'package:flutter_pets/components/Submit.dart';
import 'package:flutter_pets/screens/PetCadastro.dart';

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
              Input(
                ctrl: ddd(),
                keyboard: TextInputType.text,
                label: 'Usúario',
              ),
              SizedBox(
                height: 40,
              ),
              Input(
                ctrl: ddd(),
                keyboard: TextInputType.number,
                label: 'Senha',
              ),
              SizedBox(
                height: 40,
              ),
              Input(
                ctrl: ddd(),
                keyboard: TextInputType.number,
                label: 'Confirmar senha',
              ),
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
