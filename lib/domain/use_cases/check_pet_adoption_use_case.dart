import 'package:high_paw/domain/entities/pet.dart';

abstract interface class CheckPetAdoptionUseCase {
  Future<bool> execute(Pet pet);
}
