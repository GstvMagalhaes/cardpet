import 'package:flutter/cupertino.dart';

import 'vacinas.dart';

class Pet {
  late String id;
  late String nome;
  late String dataNascimento;
  late String raca;
  late String peso;

  Pet(
    this.id,
    this.nome,
    this.dataNascimento,
    this.raca,
    this.peso,
  );

  Pet.map(dynamic obj) {
    this.id = obj['id'];
    this.nome = obj['nome'];
    this.dataNascimento = obj['dataNascimento'];
    this.raca = obj['raca'];
    this.peso = obj['peso'];
  }

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['nome'] = nome;
    map['dataNascimento'] = dataNascimento;
    map['raca'] = raca;
    map['peso'] = peso;

    return map;
  }

  Pet.fromMap(Map<String, dynamic> map, String id) {
    this.id = id;
    this.nome = map['nome'];
    // this.dataNascimento = map['dataNascimento'];
    this.raca = map['raca'];
    // this.peso = map['peso'];
  }
}
