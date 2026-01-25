import 'dart:async';

import 'package:flutter_pokedex/domain/entity/poke_entity.dart';
import 'package:flutter_pokedex/domain/enum/poke_type.dart';
import 'package:flutter_pokedex/domain/enum/view_status.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'poke_dex_viewmodel.freezed.dart';

@freezed
class PokeDexListStatus with _$PokeDexListStatus {
  const factory PokeDexListStatus({
    required List<PokeEntity> pokeList,
    required ViewStatus viewStatus,
    required PokeType selectedType,
    required PokeDexAlign align,
  }) = _PokeDexListStatus;
}

enum PokeDexAlign { smaller, lager, atoz, ztoa }

final pokeViewModelProvider =
    AsyncNotifierProvider.autoDispose<PokeDexViewModel, PokeDexListStatus>(
      () => PokeDexViewModel(),
    );

class PokeDexViewModel extends AutoDisposeAsyncNotifier<PokeDexListStatus> {
  PokeDexViewModel({});

  @override
  FutureOr<PokeDexListStatus> build() {}
}
