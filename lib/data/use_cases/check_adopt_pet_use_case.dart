import 'package:high_paw/utils/adopted_data_manager.dart';
import 'package:high_paw/domain/entities/pet.dart';
import 'package:high_paw/domain/repositories/local_storage_repository.dart';
import 'package:high_paw/domain/use_cases/check_pet_adoption_use_case.dart';

class CheckPetAdoptionUseCaseImpl implements CheckPetAdoptionUseCase {
  final LocalStorageRepository localStorageRepository;

  CheckPetAdoptionUseCaseImpl(this.localStorageRepository);

  final String adopterKey = "ADOPTED_PET";

  @override
  Future<bool> execute(Pet pet) async {
    final adoptedData =
        AdoptedDataManager(await localStorageRepository.getString(adopterKey));

    final adoptedDataSet = adoptedData.set;

    return adoptedDataSet.contains(pet.id);
  }
}
