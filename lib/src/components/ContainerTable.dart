import 'package:flutter/material.dart';
import 'dart:convert';

class ContainerTable extends StatelessWidget {
  //const ContainerTable({Key key}) : super(key: key);
  var name;

  ContainerTable({@required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          name,
          style: TextStyle(color: Colors.white, fontSize: 15),
          textAlign: TextAlign.center,
        ),
      ),
      color: Colors.lightBlue[600],
      height: 40,
      width: 110,
      margin: EdgeInsets.all(5.0),
    );
  }
}

class ContainerTableDois extends StatelessWidget {
  const ContainerTableDois({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Container(
      child: Container(
      child: Center(
        child: Text(
          'Mínimo | Máximo',
          style: TextStyle(color: Colors.white, fontSize: 10),
          textAlign: TextAlign.center,
        ),
      ),
      color: Colors.lightBlue[600],
      height: 20,
      width: 110,
      margin: EdgeInsets.all(5.0),
    ),
    );
  }
}



//  return Container(
//       child: Container(
//       child: Center(
//         child: Text(
//           'Mínimo | Máximo',
//           style: TextStyle(color: Colors.white, fontSize: 10),
//           textAlign: TextAlign.center,
//         ),
//       ),
//       color: Colors.lightBlue[600],
//       height: 20,
//       width: 110,
//       margin: EdgeInsets.all(5.0),
//     ),
//     );