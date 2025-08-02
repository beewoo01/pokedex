import 'package:flutter/material.dart';
import 'package:flutter_pokedex/gen/assets.gen.dart';
import 'package:flutter_pokedex/presentation/theme/custom_text_theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PokeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback callback;
  final String title;

  const PokeAppBar({super.key, required this.callback, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () => callback(),
        icon: SvgPicture.asset(Assets.icons.arrowBackButton.path),
      ),
      scrolledUnderElevation: 0,
      centerTitle: true,
      title: Text(title, style: context.headlineLarge),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
