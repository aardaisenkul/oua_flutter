import 'package:high_paw/domain/entities/pet.dart';
import 'package:high_paw/domain/repositories/pet_repository.dart';
import 'package:high_paw/domain/use_cases/adopt_pet_use_case.dart';

class AdoptPetUseCaseImpl implements AdoptPetUseCase {
  final PetRepository repository;

  AdoptPetUseCaseImpl(this.repository);

  @override
  Future<void> execute(Pet pet) {
    return repository.adoptPet(pet);
  }
}
