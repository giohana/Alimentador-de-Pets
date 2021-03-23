import 'package:flutter/material.dart';

class TableGrid extends StatelessWidget {
  const TableGrid({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Center(
              child: Text(
                'Cachorro',
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
            ),
        ],
      ),
    );
  }
}






// Container(
//                child: Text(
//                  'Porte',
//                  style: TextStyle(
//                    color: Colors.white,
//                    fontSize: 15
//                  ),
//                  textAlign: TextAlign.center,
//                ),
//                color: Colors.lightBlue[600],
//                height: 20,
//                width: 70,
//             ),


// GridConsumo(),


// Center(
//               child: Text(
//                 'Cachorro',
//                 style: TextStyle(color: Colors.black, fontSize: 25),
//               ),
//             ),