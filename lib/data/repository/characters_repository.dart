import 'package:breaking_bloc/data/models/characters.dart';
import 'package:breaking_bloc/data/web_services/characters_web_services.dart';

class CharactersRepository {
  final CharactersWebServices charactersWebServices;

  CharactersRepository(this.charactersWebServices);

  Future<List<dynamic>> getAllCharacters() async {
    final character = await charactersWebServices.getAllCharacters();
    return character.map((e) => Character.fromJson(e)).toList();
  }
}
