import 'package:high_paw/domain/entities/pet.dart';

abstract interface class AdoptPetUseCase {
  Future<void> execute(Pet pet);
}
