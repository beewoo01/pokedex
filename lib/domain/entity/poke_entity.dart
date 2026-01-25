import 'package:flutter/foundation.dart';
import 'package:flutter_pokedex/domain/enum/poke_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'poke_entity.freezed.dart';

@freezed 
class PokeEntity with _$PokeEntity {
  const factory PokeEntity({
    required int pokedexId,
    required String name,
    required String imageUrl,
    required List<PokeType> types,
  }) = _PokeEntity;

}