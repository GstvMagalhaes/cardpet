import '../models/pet.dart';
import 'package:flutter/material.dart';
import '../models/vacinas.dart';

class PetsRepository {
  final List<Pet> _pets = [];

  get pets => this._pets;

  void addVacina({required Pet pet, required Vacinas vacina}){
    pet.vacinas.add(vacina);
  }

  PetsRepository(){
    _pets.addAll([
      Pet(
      foto: "https://avatars.githubusercontent.com/u/99221402?v=4",
      nome: "Billy", 
      tipo: "Cachorro",

    ),
      Pet(
      foto: "https://avatars.githubusercontent.com/u/99221251?v=4",
      nome: "Bolt", 
      tipo: "Cachorro",
    ),
      Pet(
      foto: "https://avatars.githubusercontent.com/u/50676424?v=4",
      nome: "Meno", 
      tipo: "Cachorro",
    ),
      Pet(
      foto: "https://avatars.githubusercontent.com/u/99221052?v=4",
      nome: "Junin", 
      tipo: "Cachorro",
    ),


  ]);
  }
}