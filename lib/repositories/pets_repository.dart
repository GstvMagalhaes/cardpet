import '../models/pet.dart';
import 'package:flutter/material.dart';
import '../models/vacinas.dart';

class PetsRepository {
  final List<Pet> _pets = [];

  get pets => this._pets;

  void addVacina({required Pet pet, required Vacinas vacina}) {
    pet.vacinas.add(vacina);
  }

  PetsRepository() {
    _pets.addAll([
      Pet(
        foto:
            "https://i.pinimg.com/564x/84/48/c8/8448c8666642b94395a81945bf2af015.jpg",
        nome: "Billy",
        tipo: "Gato",
      ),
      Pet(
        foto:
            "https://i.pinimg.com/564x/d0/4c/78/d04c787a2839558dac396240f1772dd5.jpg",
        nome: "Bolt",
        tipo: "Cachorro",
      ),
      Pet(
        foto:
            "https://i.pinimg.com/564x/f0/e0/5c/f0e05ce501809070bb151e1cd92dadd5.jpg",
        nome: "Boris",
        tipo: "Gato",
      ),
      Pet(
        foto:
            "https://i.pinimg.com/564x/32/4a/e7/324ae71639c8002bf575ccaf8283b6ed.jpg",
        nome: "Luna",
        tipo: "Cachorro",
      ),
    ]);
  }
}
