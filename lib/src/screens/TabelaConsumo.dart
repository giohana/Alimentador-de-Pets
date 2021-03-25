import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_pets/src/components/CriaTable.dart';
import 'package:flutter_pets/src/components/TableGrid.dart';

class TabelaConsumo extends StatelessWidget {
  //const TabelaConsumo({Key key}) : super(key: key);
  List data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sugestão de consumo',
          style: TextStyle(
            color: Colors.white
          )
        ),
        iconTheme: IconThemeData(  
          color: Colors.white
        ),
      ),
      body: ListView(
        children: [
          
          TableGrid(petType: 'Cachorro'),
          CriaTable(pathJson: 'assets/data/consumoPetDog.json'),
          TableGrid(petType: 'Gato'),
          CriaTable(pathJson: 'assets/data/consumoPetCat.json'),
        ]
      ),
    );
  }
}
