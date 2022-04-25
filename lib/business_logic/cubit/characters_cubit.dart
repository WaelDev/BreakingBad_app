import 'package:bloc/bloc.dart';
import 'package:breaking_bad/data/models/character.dart';
import 'package:breaking_bad/data/repositories/characters_repository.dart';
import 'package:meta/meta.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharactersRepository charactersRepository;

  CharactersCubit(this.charactersRepository) : super(CharactersInitial());

  late List<Character> characters;

  List<Character> getCharacters() {
    emit(CharactersLoading());
    charactersRepository.getCharacters().then((characters) {
      emit(CharactersLoaded(characters));
      this.characters = characters;
    });
    return characters;
  }
}
