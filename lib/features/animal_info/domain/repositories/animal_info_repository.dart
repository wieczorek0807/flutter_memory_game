import 'package:animals/features/animal_info/domain/entities/animal_info.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';

abstract class AnimalInfoReposiory {
  Future<Either<Failure, AnimalInfoEntity>> getRandomAnimalInfo();
}
