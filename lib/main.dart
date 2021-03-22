import 'package:flutter/material.dart';
import 'package:flutter_pets/screens/Cadastro.dart';
import 'package:flutter_pets/screens/Login.dart';
import 'package:flutter_pets/screens/PetCadastro.dart';

import 'screens/Splashscreen.dart';

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
        'petCadastro': (ctx) => PetCadastro()
      },
    );
  }
}
