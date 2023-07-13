import 'package:high_paw/utils/adopted_data_manager.dart';
import 'package:high_paw/domain/entities/pet.dart';
import 'package:high_paw/domain/repositories/local_storage_repository.dart';
import 'package:high_paw/domain/use_cases/adopt_pet_use_case.dart';

class MockAdoptPetsUseCase implements AdoptPetUseCase {
  final LocalStorageRepository localStorageRepository;

  MockAdoptPetsUseCase(this.localStorageRepository);

  final String adopterKey = "ADOPTED_PET";

  @override
  Future<void> execute(Pet pet) async {
    pet.isAdopted = true;
    // Simulate an API delay
    final adoptedData =
        AdoptedDataManager(await localStorageRepository.getString(adopterKey));
    adoptedData.add(pet.id);

    await localStorageRepository.setString(adopterKey, adoptedData.toString());
    await Future.delayed(const Duration(seconds: 2));
  }
}
