import 'package:high_paw/domain/entities/pet.dart';

abstract interface class GetPetDetailUseCase {
  Future<Pet> execute(String id);
}
