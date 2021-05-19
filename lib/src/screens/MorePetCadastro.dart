import 'package:flutter/material.dart';
import 'package:flutter_pets/src/components/Input.dart';

class ModePetCadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Form(
      child: Column(children: <Widget>[
        Input(
          TextInputType.name,
          'Nome do seu pet',
          ddd(),
        ),
        SizedBox(
          //height: 20,
        ),
        Input(
          TextInputType.name,
          'Raça',
          ddd(),
        ),

        SizedBox(
         // height: 20,
        ),
        // DropDownButton(),
        Input(
          TextInputType.name,
          'Peso',
          ddd(),
        ),
      ]),
    );
  }

  ddd() {}
}
