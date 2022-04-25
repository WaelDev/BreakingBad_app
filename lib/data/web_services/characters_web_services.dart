import 'package:breaking_bad/constants/strings.dart';
import 'package:dio/dio.dart';

class CharactersWebServices {
  late Dio dio;

  CharactersWebServices() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: 5000,
      receiveTimeout: 5000,
    );

    dio = Dio(options);
  }

  Future<List<dynamic>> getCharacters() async {
    try {
      var response = await dio.get('characters');
      print(response.data);
      return response.data;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}
