import 'dart:convert';

import '../models/animal_info_model.dart';
import 'package:http/http.dart' as http;

import '../../../../core/error/exceptions.dart';

abstract class AnimalInfoRemoteDataSource {
  Future<AnimalInfoModel> getRandomAnimalInfo();
}

class AnimalInfoRemoteDataSourceImpl implements AnimalInfoRemoteDataSource {
  final http.Client client;

  AnimalInfoRemoteDataSourceImpl(this.client);

  @override
  Future<AnimalInfoModel> getRandomAnimalInfo() async {
    final url = Uri.https('serwer wyjebało');

    final response = await client.get(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      return AnimalInfoModel.fromJson(json.decode(response.body));
    } else {
      throw ServerException();
    }
  }
}
