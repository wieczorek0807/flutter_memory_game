import 'dart:ffi';

import 'package:animals/features/animal_info/domain/entities/animal_info.dart';

class AnimalInfoModel extends AnimalInfoEntity {
  AnimalInfoModel(
      {required String name,
      required String latinName,
      required String animalType,
      required String activeTime,
      required Float lengthMin,
      required Float lengthMax,
      required Float weightMin,
      required Float weightMax,
      required String lifespan,
      required String habitat,
      required String diet,
      required String geoRange,
      required String imageLink})
      : super(
            name: name,
            latinName: latinName,
            animalType: animalType,
            activeTime: activeTime,
            lengthMin: lengthMin,
            lengthMax: lengthMax,
            weightMin: weightMin,
            weightMax: weightMax,
            lifespan: lifespan,
            habitat: habitat,
            diet: diet,
            geoRange: geoRange,
            imageLink: imageLink);

  factory AnimalInfoModel.fromJson(Map<String, dynamic> json) {
    return AnimalInfoModel(
        name: json['name'],
        latinName: json['latinName'],
        animalType: json['animalType'],
        activeTime: json['activeTime'],
        lengthMin: (json['lengthMin']).toFloat(),
        lengthMax: (json['lengthMax']).toFloat(),
        weightMin: (json['weightMin']).toFloat(),
        weightMax: (json['weightMax']).toFloat(),
        lifespan: json['lifespan'],
        habitat: json['habitat'],
        diet: json['diet'],
        geoRange: json['geoRange'],
        imageLink: json['imageLink']);
  }
}
