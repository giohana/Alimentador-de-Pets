import 'package:flutter/material.dart';
import 'package:flutter_pets/src/components/ContainerTable.dart';
import 'package:flutter_pets/src/components/CriaTable.dart';

class TableGrid extends StatelessWidget {
  //const TableGrid({Key key}) : super(key: key);
  var petType;

  TableGrid({@required this.petType});

  @override
  Widget build(BuildContext context) {
        final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(
            //height: 20,
          ),
        Text(
          petType,
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        SizedBox(
           // height: 15,
          ),
        Row(
          children: [
            ContainerTable(name: 'Porte'),
            ContainerTable(name: 'Peso'),
            ContainerTable(name: 'Gramas')
          ],
        ),
        Row(children: [
          SizedBox(
           // width: 120,
          ),
          ContainerTableDois(),
          
     
          
        
          ContainerTableDois(),
          
     
          
        ]),
        
      ],
    );
  }
}

// return Container(
//       // child: ListView(
//       //   children: [
//       //     Center(
//       //         child: Text(
//       //           'Cachorro',
//       //           style: TextStyle(color: Colors.black, fontSize: 25),
//       //         ),
//       //       ),
//       //   ],
//       // ),
//     );
//   }

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
