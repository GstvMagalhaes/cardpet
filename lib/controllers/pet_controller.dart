import '../models/pet.dart';
import '../models/vacinas.dart';
import '../repositories/pets_repository.dart';

class PetController {
  late PetsRepository petsRepository;
  List<Pet> get tabela => petsRepository.pets;

  PetController(){
    petsRepository = PetsRepository();
    
  }
}