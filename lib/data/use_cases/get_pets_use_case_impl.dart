import 'package:high_paw/domain/entities/pet.dart';
import 'package:high_paw/domain/entities/pet_type.dart';
import 'package:high_paw/domain/repositories/pet_repository.dart';
import 'package:high_paw/domain/use_cases/get_pets_use_case.dart';

class GetPetsUseCaseImpl implements GetPetsUseCase {
  final PetRepository repository;

  GetPetsUseCaseImpl(this.repository);

  @override
  Future<List<Pet>> execute(PetType? type, int? page) {
    return repository.getPets();
  }
}
