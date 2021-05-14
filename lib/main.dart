import 'package:flutter/material.dart';

import 'package:flutter_pets/src/screens/Cadastro.dart';
import 'package:flutter_pets/src/screens/Home.dart';
import 'package:flutter_pets/src/screens/Login.dart';
import 'package:flutter_pets/src/screens/PetCadastro.dart';
import 'package:flutter_pets/src/screens/Splashscreen.dart';
import 'package:flutter_pets/src/screens/TabelaConsumo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Admin - Alimentador Automatico',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lightBlue
          //Colors.lightBlue[600],
          ),
      home: SplashScreen(),
      routes: {
        'login': (ctx) => Login(),
        'cadastro': (ctx) => Cadastro(),
        'petCadastro': (ctx) => PetCadastro(),
        'tabelaConsumo': (ctx) => TabelaConsumo(),
        'home': (ctx) => Home()
      },
    );
  }
}
