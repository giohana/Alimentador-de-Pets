import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DropDownButton extends StatefulWidget {


  @override
  _DropDownButtonState createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  String dropdownValue;

  List<dynamic> data = ['../../../'];

  @override
  Widget build(BuildContext context) {

    var json = JsonDecoder().convert('../../../assets/data/typePet.json');

    return DropdownButton<String>( );
              
  }
}



// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({Key? key}) : super(key: key);

//   @override
//   _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
// }

/// This is the private State class that goes with MyStatefulWidget.
// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   String dropdownValue = 'One';

//   @override
//   Widget build(BuildContext context) {
//     return DropdownButton<String>(
//       value: dropdownValue,
//       icon: const Icon(Icons.arrow_downward),
//       iconSize: 24,
//       elevation: 16,
//       style: const TextStyle(color: Colors.deepPurple),
//       underline: Container(
//         height: 2,
//         color: Colors.deepPurpleAccent,
//       ),
//       onChanged: (String? newValue) {
//         setState(() {
//           dropdownValue = newValue!;
//         });
//       },
//       items: <String>['One', 'Two', 'Free', 'Four']
//           .map<DropdownMenuItem<String>>((String value) {
//         return DropdownMenuItem<String>(
//           value: value,
//           child: Text(value),
//         );
//       }).toList(),
//     );
//   }
// }



//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: DefaultAssetBundle.of(context).loadString(pathJson),
//       builder: (context, snapshot) {
//         dynamic mydata = JsonDecoder().convert(snapshot.data.toString());

//         return new ListView.builder(
//           scrollDirection: Axis.vertical,
//           shrinkWrap: true,
//            itemBuilder: (BuildContext context, int index){
//              return new Table(
//                border: TableBorder.all(),
//                columnWidths: const <int, TableColumnWidth>{
//                  0: FixedColumnWidth(30),
//                  1: FixedColumnWidth(30),
//                  2: FixedColumnWidth(30),
//                  3: FixedColumnWidth(30)
//                },
//                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
//                children: <TableRow>[
//                  TableRow(
//                    children: [
                    
//                      new Text(mydata[index]['porte']),
//                         new Text(mydata[index]['pesoMin'] +"kg"),
//                           new Text(mydata[index]['pesoMax'] + "kg"),
//                         new Text(mydata[index]['gramasMin'] + "g"),
//                         new Text(mydata[index]['gramasMax'] + "g"),
//                    ]
//                  ),
//                ],

//              );

//            },
          
//           itemCount: mydata == null ? 0 : mydata.length,
//         );

//       },
      
      
//     );
//   }
// }

