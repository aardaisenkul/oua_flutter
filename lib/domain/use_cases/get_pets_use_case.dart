import 'package:high_paw/domain/entities/pet.dart';
import 'package:high_paw/domain/entities/pet_type.dart';

abstract interface class GetPetsUseCase {
  Future<List<Pet>> execute(PetType? type, int? page);
}
