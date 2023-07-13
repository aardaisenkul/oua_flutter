import 'package:high_paw/domain/entities/pet.dart';

abstract interface class GetAdopterPetListUseCase {
  Future<List<Pet>> execute();
}
