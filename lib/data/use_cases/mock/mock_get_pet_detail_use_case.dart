import 'package:high_paw/domain/entities/pet.dart';
import 'package:high_paw/domain/repositories/pet_repository.dart';
import 'package:high_paw/domain/use_cases/get_pet_detail_use_case.dart';

class GetPetDetailUseCaseImpl implements GetPetDetailUseCase {
  final PetRepository repository;

  GetPetDetailUseCaseImpl(this.repository);

  @override
  Future<Pet> execute(String id) {
    return repository.getPetDetail(id);
  }
}
