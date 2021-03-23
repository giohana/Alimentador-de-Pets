import 'package:flutter/material.dart';
import 'package:flutter_pets/src/components/TableGrid.dart';

class TabelaConsumo extends StatelessWidget {
  const TabelaConsumo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Sugestão de consumo',
            style: TextStyle(color: Colors.white),
          ),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 25,
            ),
            TableGrid(),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
