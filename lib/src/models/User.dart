import 'package:flutter/material.dart';

class User {
  int id;
  String nome;
  String user;
  int password;
  int idPet;
  String nomePet;
  String racaPet;
  String pesoPet;
  int gramasAlimento;

  User(
      {this.id,
      this.nome,
      @required this.user,
      @required this.password,
      this.idPet,
      this.nomePet,
      this.racaPet,
      this.pesoPet,
      this.gramasAlimento});

  User.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    nome = map['nome'];
    user = map['user'];
    password = map['password'];
    idPet = map['idPet'];
    nomePet = map['nomePet'];
    racaPet = map['racaPet'];
    pesoPet = map['pesoPet'];
    gramasAlimento = map['gramasAlimento'];
  }

  @override
  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['user'] = this.user;
    data['password'] = this.password;
    data['idPet'] = this.idPet;
    data['nomePet'] = this.nomePet;
    data['racaPet'] = this.racaPet;
    data['pesoPet'] = this.pesoPet;
    data['gramasAlimento'] = this.gramasAlimento;
    return data;
  }


  // @override
  // get userGet {
  //  return user;
  // }

  // @override
  // get passwordGet {
  //  return password;
  // }

  // @override
  // get nomeGet {
  //  return nome;
  // }

  // @override
  // get senha {
  //  return password;
  // }

}

