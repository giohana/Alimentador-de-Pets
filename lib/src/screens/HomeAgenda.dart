import 'package:flutter/material.dart';
import 'package:flutter_pets/src/models/User.dart';

class HomeAgenda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: <Widget>[
            Text('data')
          ],
        ),
      ),
    );
  }

//   Future<List<User>> dogs() async {
//   // Get a reference to the database.
//   final db = await database;

//   // Query the table for all The Dogs.
//   final List<Map<String, dynamic>> maps = await db.query('dogs');

//   // Convert the List<Map<String, dynamic> into a List<Dog>.
//   return List.generate(maps.length, (i) {
//     return User(
//       id: maps[i]['id'],
//       nome: maps[i]['nome'],
//       user: maps[i]['user'],
//       password: maps[i]['password'],
//       idPet: maps[i]['idPet'],
//       nomePet: maps[i]['nomePet'],
//       racaPet: maps[i]['racaPet'],
//       pesoPet: maps[i]['pesoPet'],
//       gramasAlimento: maps[i]['gramasAlimento'],
//     );
//   });
// }
}


