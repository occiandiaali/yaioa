import 'dart:convert';
import 'package:http/http.dart';
import './../domain/games_model.dart';

class GamesRepository {
  String gamesUrl = "https://reqres.in/api/users?page=2";

  Future<List<GamesModel>> getGames() async {
    Response response = await get(Uri.parse(gamesUrl));

    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body)['data'];
      return result.map((e) => GamesModel.fromJson(e)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}