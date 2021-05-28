import 'package:flutter/material.dart';

class User {
  final int id;
  final String user;
  final String nome;
  final int password;
  final String idPet;

  const User ({
    this.id,
    @required this.user,
    this.nome,
    @required this.password,
    this.idPet,
  });

}