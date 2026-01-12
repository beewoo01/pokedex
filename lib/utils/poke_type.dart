import 'package:flutter/widgets.dart';
import 'package:flutter_pokedex/gen/assets.gen.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum PokeType {
  /* allType(
    bgColor: Color(0xFF333333),
    color:  Color(0xFF333333),
    label: 'All',
    ), */
  normal(bgColor: Color(0xFFF1F2F3), color: Color(0xFF919AA2), label: 'Normal'),
  fire(bgColor: Color(0xFFFCF3EB), color: Color(0xFFFF9D55), label: 'Fire'),
  water(bgColor: Color(0xFFEBF1F8), color: Color(0xFF5090D6), label: 'Water'),
  electric(
    bgColor: Color(0xFFFBF8E9),
    color: Color(0xFFF4D23C),
    label: 'Electric',
  ),
  grass(bgColor: Color(0xFFEDF6EC), color: Color(0xFF63BC5A), label: 'Grass'),
  ice(bgColor: Color(0xFF73CEC0), color: Color(0xFF73CEC0), label: 'Ice'),
  fighting(
    bgColor: Color(0xFFF8E9EE),
    color: Color(0xFFCE416B),
    label: 'Fighting',
  ),
  poison(bgColor: Color(0xFFF5EDF8), color: Color(0xFFB567CE), label: 'Poison'),
  ground(bgColor: Color(0xFFD97845), color: Color(0xFFF9EFEA), label: 'Ground'),
  flying(bgColor: Color(0xFFF1F4FA), color: Color(0xFF89AAE3), label: 'Flying'),
  psychic(
    bgColor: Color(0xFFFA7179),
    color: Color(0xFFFCEEEF),
    label: 'Psychic',
  ),
  bug(bgColor: Color(0xFFF1F6E8), color: Color(0xFF91C12F), label: 'Bug'),
  rock(bgColor: Color(0xFFF7F5F1), color: Color(0xFFC5B78C), label: 'Rock'),
  ghost(bgColor: Color(0xFFEBEDF4), color: Color(0xFF5269AD), label: 'Ghost'),
  dragon(bgColor: Color(0xFFE4EEF6), color: Color(0xFF0B6DC3), label: 'Dragon'),
  dark(bgColor: Color(0xFFECEBED), color: Color(0xFF5A5465), label: 'Dark'),
  steel(bgColor: Color(0xFFECF1F3), color: Color(0xFF5A8EA2), label: 'Steel'),
  fairy(bgColor: Color(0xFFFBF1FA), color: Color(0xFFEC8FE6), label: 'Fairy');

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
    PokeType.water => Assets.icons.iconTypeWater.svg(),
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
  };

  SvgPicture get iconGradientAssetPath => switch (this) {
    PokeType.normal => Assets.icons.iconTypeNormalGradient.svg(),
    PokeType.fire => Assets.icons.iconTypeFireGradient.svg(),
    PokeType.water => Assets.icons.iconTypeWaterGradient.svg(),
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
  };
}
