import 'package:flutter/material.dart';
import 'package:flutter_pets/components/Input.dart';

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
                       style: TextStyle(
                         color: Colors.lightBlue[600],
                         fontSize: 23
                       ),
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
               ],
             ),
         ),
         
       ),
    );
  }
}

ddd() {}
