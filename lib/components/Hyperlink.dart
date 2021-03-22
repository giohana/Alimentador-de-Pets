import 'package:flutter/material.dart';

class Hyperlink extends StatelessWidget {
  var text;
  var ctrl;

  Hyperlink({@required this.text, @required this.ctrl});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: new InkWell(
        child: new Text(
          text,
          style: TextStyle(
            color: Colors.lightBlue[600],
            fontSize: 17
          ),
        ), 
        onTap: ctrl),
    );
  }
}
