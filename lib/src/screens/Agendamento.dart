import 'package:flutter/material.dart';
import 'package:flutter_pets/src/components/Input.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Agendamento extends StatefulWidget {
  @override
  _AgendamentoState createState() => _AgendamentoState();
}

class _AgendamentoState extends State<Agendamento> {
  MaskTextInputFormatter dateMaskFormatter =
      MaskTextInputFormatter(mask: "##/##/####");

  MaskTextInputFormatter hourMaskFormatter =
      MaskTextInputFormatter(mask: "##:##");


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agendamento'),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Input(
              TextInputType.datetime,
              'Data',
              ddd(),
              mask: [dateMaskFormatter],
              hint: "00/00/0000",
            ),
            Input(
              TextInputType.datetime,
              'Hora',
              ddd(),
              hint: '00:00',
              mask: [hourMaskFormatter],
            ),
            Input(
              TextInputType.number,
              'Quantidade em gramas',
              ddd(),
              hint: '200',
              
            ),
          ],
        ),
      ),
    );
  }
}

ddd() {}
