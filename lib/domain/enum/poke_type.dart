import 'package:flutter/widgets.dart';
import 'package:flutter_pokedex/gen/assets.gen.dart';
import 'package:flutter_pokedex/presentation/theme/common_color.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum PokeType {
  allType(bgColor: black800, color: black800, label: 'All'),
  normal(bgColor: Color(0xFFF1F2F3), color: normalColor, label: 'Normal'),
  fire(bgColor: Color(0xFFFCF3EB), color: fireColor, label: 'Fire'),
  aqua(bgColor: Color(0xFFEBF1F8), color: aquaColor, label: 'Water'),
  electric(bgColor: Color(0xFFFBF8E9), color: electricColor, label: 'Electric'),
  grass(bgColor: Color(0xFFEDF6EC), color: grassColor, label: 'Grass'),
  ice(bgColor: Color(0xFF73CEC0), color: iceColor, label: 'Ice'),
  fighting(bgColor: Color(0xFFF8E9EE), color: fightingColor, label: 'Fighting'),
  poison(bgColor: Color(0xFFF5EDF8), color: poisonColor, label: 'Poison'),
  ground(bgColor: Color(0xFFF9EFEA), color: groundColor, label: 'Ground'),
  flying(bgColor: Color(0xFFF1F4FA), color: flyingColor, label: 'Flying'),
  psychic(bgColor: Color(0xFFFCEEEF), color: psychicColor, label: 'Psychic'),
  bug(bgColor: Color(0xFFF1F6E8), color: bugColor, label: 'Bug'),
  rock(bgColor: Color(0xFFF7F5F1), color: rockColor, label: 'Rock'),
  ghost(bgColor: Color(0xFFEBEDF4), color: ghostColor, label: 'Ghost'),
  dragon(bgColor: Color(0xFFE4EEF6), color: dragonColor, label: 'Dragon'),
  dark(bgColor: Color(0xFFECEBED), color: darkColor, label: 'Dark'),
  steel(bgColor: Color(0xFFECF1F3), color: steelColor, label: 'Steel'),
  fairy(bgColor: Color(0xFFFBF1FA), color: fairyColor, label: 'Fairy');

  final Color bgColor;
  final Color color;
  final String label;

  const PokeType({
    required this.bgColor,
    required this.color,
    required this.label,
  });

  SvgPicture get iconAssetPath => switch (this) {
    PokeType.normal => Assets.icons.iconTypeNormal.svg(),
    PokeType.fire => Assets.icons.iconTypeFire.svg(),
    PokeType.aqua => Assets.icons.iconTypeWater.svg(),
    PokeType.electric => Assets.icons.iconTypeElectric.svg(),
    PokeType.grass => Assets.icons.iconTypeGrass.svg(),
    PokeType.ice => Assets.icons.iconTypeIce.svg(),
    PokeType.fighting => Assets.icons.iconTypeFighting.svg(),
    PokeType.poison => Assets.icons.iconTypePoison.svg(),
    PokeType.ground => Assets.icons.iconTypeGround.svg(),
    PokeType.flying => Assets.icons.iconTypeFlying.svg(),
    PokeType.psychic => Assets.icons.iconTypePsychic.svg(),
    PokeType.bug => Assets.icons.iconTypeBug.svg(),
    PokeType.rock => Assets.icons.iconTypeRock.svg(),
    PokeType.ghost => Assets.icons.iconTypeGhost.svg(),
    PokeType.dragon => Assets.icons.iconTypeDragon.svg(),
    PokeType.dark => Assets.icons.iconTypeDark.svg(),
    PokeType.steel => Assets.icons.iconTypeSteel.svg(),
    PokeType.fairy => Assets.icons.iconTypeFairy.svg(),
    PokeType.allType => throw UnsupportedError("All type does not have asset icon"),
  };

  SvgPicture get iconGradientAssetPath => switch (this) {
    PokeType.normal => Assets.icons.iconTypeNormalGradient.svg(),
    PokeType.fire => Assets.icons.iconTypeFireGradient.svg(),
    PokeType.aqua => Assets.icons.iconTypeWaterGradient.svg(),
    PokeType.electric => Assets.icons.iconTypeElectricGradient.svg(),
    PokeType.grass => Assets.icons.iconTypeGrassGradient.svg(),
    PokeType.ice => Assets.icons.iconTypeIceGradient.svg(),
    PokeType.fighting => Assets.icons.iconTypeFightingGradient.svg(),
    PokeType.poison => Assets.icons.iconTypePoisonGradient.svg(),
    PokeType.ground => Assets.icons.iconTypeGroundGradient.svg(),
    PokeType.flying => Assets.icons.iconTypeFlyingGradient.svg(),
    PokeType.psychic => Assets.icons.iconTypePsychicGradient.svg(),
    PokeType.bug => Assets.icons.iconTypeBugGradient.svg(),
    PokeType.rock => Assets.icons.iconTypeRockGradient.svg(),
    PokeType.ghost => Assets.icons.iconTypeGhostGradient.svg(),
    PokeType.dragon => Assets.icons.iconTypeDragonGradient.svg(),
    PokeType.dark => Assets.icons.iconTypeDarkGradient.svg(),
    PokeType.steel => Assets.icons.iconTypeSteelGradient.svg(),
    PokeType.fairy => Assets.icons.iconTypeFairyGradient.svg(),
    PokeType.allType => throw UnsupportedError("All type does not have gradient icon"),
  };
}
