import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_pets/src/models/User.dart';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final database = openDatabase(
    join(await getDatabasesPath(), 'pets.db'),
    onCreate: (db, version) {
      return db.execute(
        'CREATE TABLE users(id INTEGER PRIMARY KEY, nome TEXT, user TEXT, password INT, idPet INT, nomePet TEXT, racaPet TEXT, pesoPet TEXT, gramasAlimento INT)',
      );
    },
    version: 1,
  );

  Future<void> insertUser(User userPet) async {
    final db = await database;

    await db.insert(
      'users',
      userPet.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  var testeUser = User(
    id: 0,
    nome: 'Giohana',
    user: 'giohana',
    password: 1234,
    idPet: 0,
    nomePet: 'Zeus',
    racaPet: 'Galguinho Italiano',
    pesoPet: '1500',
    gramasAlimento: 200
  );

  await insertUser(testeUser);


Future<List<User>> teste() async {
  // Get a reference to the database.
  final db = await database;

  // Query the table for all The Dogs.
  final List<Map<String, dynamic>> maps = await db.query('users');

  // Convert the List<Map<String, dynamic> into a List<Dog>.
  return List.generate(maps.length, (i) {
    return User(
      id: maps[i]['id'],
      nome: maps[i]['nome'],
      user: maps[i]['user'],
      password: maps[i]['password'],
      idPet: maps[i]['idPet'],
      nomePet: maps[i]['nomePet'],
      racaPet: maps[i]['racaPet'],
      pesoPet: maps[i]['pesoPet'],
      gramasAlimento: maps[i]['gramasAlimento'],
    );
  });
}

print('############');
print(await teste()); 
print('*************');

}
