import 'package:breaking_bad/data/models/character.dart';
import 'package:breaking_bad/data/web_services/characters_web_services.dart';

class CharactersRepository {
  final CharactersWebServices charactersWebServices;

  CharactersRepository(this.charactersWebServices);

  Future<List<Character>> getCharacters() async {
    final data = await charactersWebServices.getCharacters();
    var characters =
        data.map((character) => Character.fromJson(character)).toList();
    return characters;
  }
}
