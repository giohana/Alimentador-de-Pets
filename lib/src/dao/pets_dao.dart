

// import 'package:flutter_pets/src/dao/db.dart';
// import 'package:flutter_pets/src/models/User.dart';
// import 'package:sqflite/sqflite.dart';

// abstract class PetsDAO<Banco extends User> {

//   Future<Database> get db => DatabaseHelper.getInstance().db;

//   String get users;

//   Banco fromMap(Map<String,dynamic> map);

//   Future<int> save(User entity) async {
//     var dbClient = await db;
//     var id = await dbClient.insert(users, entity.toMap(),
//         conflictAlgorithm: ConflictAlgorithm.replace);
//     print('id: $id');
//     return id;
//   }

//   Future<List<Banco>> query(String sql,[List<dynamic> arguments]) async {
//     final dbClient = await db;

//     final list = await dbClient.rawQuery(sql,arguments);

//     return list.map<Banco>((json) => fromMap(json)).toList();
//   }

//   Future<List<Banco>> findAll() {
//     return query('select * from $users');
//   }

//   Future<Banco> findById(int user) async {
//     List<Banco> list =
//         await query('select * from $users where user = ?', [user]);

//     return list.length > 0 ? list.first : null;
//   }

//   Future<bool> exists(int id) async {
//     Banco c = await findById(id);
//     var exists = c != null;
//     return exists;
//   }

//   Future<int> count() async {
//     final dbClient = await db;
//     final list = await dbClient.rawQuery('select count(*) from $users');
//     return Sqflite.firstIntValue(list);
//   }

//   Future<int> delete(int id) async {
//     var dbClient = await db;
//     return await dbClient.rawDelete('delete from $users where id = ?', [id]);
//   }

//   Future<int> deleteAll() async {
//     var dbClient = await db;
//     return await dbClient.rawDelete('delete from $users');
//   }
// }