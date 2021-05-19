import 'package:flutter/material.dart';
import 'package:flutter_pets/src/components/DropDownButton.dart';

import 'package:flutter_pets/src/components/Hyperlink.dart';
import 'package:flutter_pets/src/components/Input.dart';
import 'package:flutter_pets/src/components/Submit.dart';
import 'package:flutter_pets/src/screens/TabelaConsumo.dart';

import 'MorePetCadastro.dart';

class PetCadastro extends StatefulWidget {
  PetCadastro({Key key}) : super(key: key);

  @override
  _PetCadastroState createState() => _PetCadastroState();
}

class _PetCadastroState extends State<PetCadastro> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Form(
      child: Container(
        child: Scaffold(
          body: Center(
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: height * 0.03,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: width * 0.04,
                    ),
                    Text(
                      'Para continuar precisamos \nsaber alguns dados seus e de \nseu Pet!',
                      style:
                          TextStyle(color: Colors.lightBlue[600], fontSize: 23),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: width * 0.04,
                    ),
                    Image.asset(
                      "assets/image/Line.png",
                      alignment: Alignment.centerLeft,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Input(
                  TextInputType.name,
                  'Seu nome completo',
                  ddd(),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Image.asset(
                  "assets/image/Line.png",
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                ModePetCadastro(),
                SizedBox(
                  // height: 8,
                  height: height * 0.01,
                ),
                Row(
                  children: [
                    SizedBox(
                      // width: 42,
                      width: width * 0.13,
                    ),
                    new InkWell(
                        child: new Text(
                          'Ver sugestão de consumo',
                          style: TextStyle(
                            color: Colors.lightBlue[600],
                            fontSize: 20,
                          ),
                        ),
                        onTap: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TabelaConsumo()))
                            }),
                  ],
                ),
                SizedBox(
                  // height: 20,
                  height: height * 0.05,
                ),
                Image.asset(
                  "assets/image/Line.png",
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Hyperlink(
                    text: '+ Adicionar mais Pets', ctrl: () => moreConsumo()),
                SizedBox(
                  height: height * 0.03,
                ),
                SubmitBotton(ctrl: ddd(), title: 'Continuar'),
                SizedBox(
                  height: height * 0.05,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ddd() {}

  Future<dynamic> moreConsumo() async {
    return ModePetCadastro();
  }
}
