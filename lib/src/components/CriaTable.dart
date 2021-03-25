import 'dart:convert';

import 'package:flutter/material.dart';


class CriaTable extends StatelessWidget {
  //const CriaTable({Key key}) : super(key: key);

  List data;
  dynamic pathJson;
  
  CriaTable({
    @required this.pathJson
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString(pathJson),
      builder: (context, snapshot) {
        dynamic mydata = JsonDecoder().convert(snapshot.data.toString());

        return new ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
           itemBuilder: (BuildContext context, int index){
             return new Table(
               border: TableBorder.all(),
               columnWidths: const <int, TableColumnWidth>{
                 0: FixedColumnWidth(30),
                 1: FixedColumnWidth(30),
                 2: FixedColumnWidth(30),
                 3: FixedColumnWidth(30)
               },
               defaultVerticalAlignment: TableCellVerticalAlignment.middle,
               children: <TableRow>[
                 TableRow(
                   children: [
                    
                     new Text(mydata[index]['porte']),
                        new Text(mydata[index]['pesoMin'] +"kg"),
                          new Text(mydata[index]['pesoMax'] + "kg"),
                        new Text(mydata[index]['gramasMin'] + "g"),
                        new Text(mydata[index]['gramasMax'] + "g"),
                   ]
                 ),
               ],

             );

           },
          
          itemCount: mydata == null ? 0 : mydata.length,
        );

      },
      
      
    );
  }
}


