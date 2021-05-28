import 'package:flutter/material.dart';
import 'package:flutter_pets/src/components/BottomNavigation.dart';
import 'package:flutter_pets/src/screens/Agendamento.dart';
import 'package:flutter_pets/src/screens/HomeAgenda.dart';
import 'package:flutter_pets/src/screens/Insights.dart';
import 'package:flutter_pets/src/screens/Perfil.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final String nomePessoa = 'Giohana';
  int _indiceAtual = 0;

  final List<Widget> _telas = [
    HomeAgenda(),
    Insights(),
    Perfil(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Olá, $nomePessoa',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications_none),
            color: Colors.white,
            iconSize: 35,
            onPressed: () {},
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Agendamento()))
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: _telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.lightBlue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        iconSize: 32,
        currentIndex: _indiceAtual,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            title: Container(height: 0.0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            title: Container(height: 0.0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            title: Container(height: 0.0),
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _indiceAtual = index;
    });
  }
}
