import 'package:breaking_bad/data/models/character.dart';
import 'package:breaking_bad/data/web_services/characters_web_services.dart';

class CharactersRepository {
  final CharactersWebServices charactersWebServices;

  CharactersRepository(this.charactersWebServices);

  Future<List<Character>> getAllCharacters() async {
    final data = await charactersWebServices.getAllCharacters();
    var characters =
        data.map((character) => Character.fromJson(character)).toList();
    return characters;
  }
}
