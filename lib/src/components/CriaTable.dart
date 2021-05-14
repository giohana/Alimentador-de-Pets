import 'dart:convert';

import 'package:flutter/material.dart';

class CriaTable extends StatelessWidget {
  //const CriaTable({Key key}) : super(key: key);

  List data;
  dynamic pathJson;

  CriaTable({@required this.pathJson});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString(pathJson),
      builder: (context, snapshot) {
        dynamic mydata = JsonDecoder().convert(snapshot.data.toString());

        return new ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return new Table(
              border: TableBorder.all(),
              columnWidths: const <int, TableColumnWidth>{
                0: FixedColumnWidth(120),
                1: FixedColumnWidth(60),
                2: FixedColumnWidth(60),
                3: FixedColumnWidth(50)
              },
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: <TableRow>[
                TableRow(children: [
                  new Text(
                    mydata[index]['porte'],
                    style: TextStyle(fontSize: 20),
                  ),
                  new Text(
                    mydata[index]['pesoMin'] + "kg",
                    style: TextStyle(fontSize: 20),
                  ),
                  new Text(
                    mydata[index]['pesoMax'] + "kg",
                    style: TextStyle(fontSize: 20),
                  ),
                  new Text(
                    mydata[index]['gramasMin'] + "g",
                    style: TextStyle(fontSize: 20),
                  ),
                  new Text(
                    mydata[index]['gramasMax'] + "g",
                    style: TextStyle(fontSize: 20),
                  ),
                ]),
              ],
            );
          },
          itemCount: mydata == null ? 0 : mydata.length,
        );
      },
    );
  }
}
