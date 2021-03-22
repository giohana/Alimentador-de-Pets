import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  //const Input({Key key}) : super(key: key);
  var ctrl;
  var keyboard;
  var label = '';

  Input({@required this.ctrl, @required this.keyboard, @required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(children: <Widget>[
        SizedBox(
          width: 40,
        ),
        Container(
          width: 280,
          child: TextFormField(
            controller: ctrl,
            keyboardType: keyboard,
            style: TextStyle(
              fontSize: 20,
            ),
            decoration: InputDecoration(
              labelText: label,
              labelStyle: TextStyle(fontSize: 12),
              border: OutlineInputBorder(),
            ),
          ),
        ),
        SizedBox(
          width: 40,
        ),
      ]),
    );
  }
}
