import 'dart:ffi';
import 'package:equatable/equatable.dart';

class AnimalInfoEntity extends Equatable {
  final String name;
  final String latinName;
  final String animalType;
  final String activeTime;
  final Float lengthMin;
  final Float lengthMax;
  final Float weightMin;
  final Float weightMax;
  final String lifespan;
  final String habitat;
  final String diet;
  final String geoRange;
  final String imageLink;

  AnimalInfoEntity(
      {required this.name,
      required this.latinName,
      required this.animalType,
      required this.activeTime,
      required this.lengthMin,
      required this.lengthMax,
      required this.weightMin,
      required this.weightMax,
      required this.lifespan,
      required this.habitat,
      required this.diet,
      required this.geoRange,
      required this.imageLink});

  @override
  List<Object?> get props =>
      [name, latinName, animalType, activeTime, lengthMax, lengthMin];
}
