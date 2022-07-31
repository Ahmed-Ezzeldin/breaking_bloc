import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:breaking_bloc/data/models/characters.dart';
import 'package:breaking_bloc/data/repository/characters_repository.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharactersRepository charactersRepository;
  CharactersCubit(this.charactersRepository) : super(CharactersInitial());

  Future<List<Character>> getAllCharacters() async {
    final characters = await charactersRepository.getAllCharacters();
    return characters.map((e) => Character.fromJson(e)).toList();
  }
}
