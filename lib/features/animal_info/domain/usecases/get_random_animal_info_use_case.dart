import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/animal_info.dart';
import '../repositories/animal_info_repository.dart';

class GetRandomAnimalInfoUseCase implements UseCase<AnimalInfoEntity> {
  final AnimalInfoReposiory repository;

  GetRandomAnimalInfoUseCase(this.repository);

  @override
  Future<Either<Failure, AnimalInfoEntity>> call() async {
    return await repository.getRandomAnimalInfo();
  }
}
