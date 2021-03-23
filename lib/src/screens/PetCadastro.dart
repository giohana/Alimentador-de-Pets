

import 'package:flutter/material.dart';

import 'package:flutter_pets/src/components/Hyperlink.dart';
import 'package:flutter_pets/src/components/Input.dart';
import 'package:flutter_pets/src/components/Submit.dart';
import 'package:flutter_pets/src/screens/TabelaConsumo.dart';

class PetCadastro extends StatefulWidget {
  PetCadastro({Key key}) : super(key: key);

  @override
  _PetCadastroState createState() => _PetCadastroState();
}

class _PetCadastroState extends State<PetCadastro> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Center(
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 18,
                  ),
                  Text(
                    'Para continuar precisamos \nsaber alguns dados seus e de \nseu Pet!',
                    style:
                        TextStyle(color: Colors.lightBlue[600], fontSize: 23),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 18,
                  ),
                  Image.asset(
                    "assets/image/Line.png",
                    alignment: Alignment.centerLeft,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Input(
                  ctrl: ddd(),
                  keyboard: TextInputType.name,
                  label: 'Seu nome completo'),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                "assets/image/Line.png",
              ),
              SizedBox(
                height: 30,
              ),
              Input(
                  ctrl: ddd(),
                  keyboard: TextInputType.name,
                  label: 'Nome do seu pet'),
              SizedBox(
                height: 20,
              ),
              Input(ctrl: ddd(), keyboard: TextInputType.name, label: 'Raça'),
              SizedBox(
                height: 20,
              ),
              Input(
                  ctrl: ddd(),
                  keyboard: TextInputType.name,
                  label: 'Consume médio de ração'),
                  SizedBox(
                    height: 8,
                  ),
              Row(
                children: [
                  SizedBox(
                    width: 42,
                  ),
                  new InkWell(
                      child: new Text(
                        'Ver sugestão de consumo',
                        style:
                            TextStyle(
                              color: Colors.lightBlue[600], 
                              fontSize: 13,
                            ),
                      ),
                      onTap: () => { Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TabelaConsumo()))}),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                "assets/image/Line.png",
              ),
              SizedBox(
                height: 30,
              ),
              Hyperlink(text: '+ Adicionar mais Pets', ctrl: ddd()),
              SubmitBotton(ctrl: ddd(), title: 'Continuar')
            ],
          ),
        ),
      ),
    );
  }
}

ddd() {}