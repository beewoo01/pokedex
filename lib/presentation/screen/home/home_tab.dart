import 'package:flutter_pokedex/gen/assets.gen.dart';

enum HomeTab {
  pokedex(label: 'Poledex'),
  regions(label: 'Regions'),
  favorites(label: 'Favorites'),
  profile(label: 'Profile');

  final String label;

  const HomeTab({required this.label});
}

extension HomeTabX on HomeTab {
  SvgGenImage get getOnIcon {
    switch (this) {
      case HomeTab.pokedex:
        return Assets.icons.icPokedexOn;
      case HomeTab.regions:
        return Assets.icons.icRegionsOn;
      case HomeTab.favorites:
        return Assets.icons.icFavoritesOn;
      case HomeTab.profile:
        return Assets.icons.icProfileOn;
    }
  }

  SvgGenImage get getOffIcon {
    switch (this) {
      case HomeTab.pokedex:
        return Assets.icons.icPokedexOff;
      case HomeTab.regions:
        return Assets.icons.icRegionsOff;
      case HomeTab.favorites:
        return Assets.icons.icFavoritesOff;
      case HomeTab.profile:
        return Assets.icons.icProfileOff;
    }
  }
}
