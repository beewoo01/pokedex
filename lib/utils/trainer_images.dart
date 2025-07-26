class TrainerImages {
  static const String _baseUrl = 'https://play.pokemonshowdown.com/sprites/trainers/';

  static const String hilda = '${_baseUrl}hilda.png';
  static const String bugCatcher = '${_baseUrl}bugcatcher-gen4dp.png';
  static const String birch = '${_baseUrl}birch.png';

  static String byName(String name) => '$_baseUrl$name.png';
}