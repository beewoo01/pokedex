import 'package:flutter/material.dart';
import 'package:flutter_pokedex/presentation/component/width_and_height.dart';
import 'package:flutter_pokedex/presentation/theme/common_color.dart';
import 'package:flutter_pokedex/presentation/theme/custom_text_theme.dart';

import '../../../utils/logger.dart';

class SecondOnBoardingScreen extends StatelessWidget {
  const SecondOnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          height: 258.59,
          child: Image.network(
            "https://play.pokemonshowdown.com/sprites/trainers/hilda.png",
            fit: BoxFit.fitHeight,
            errorBuilder: (context, error, stackTrack) {
              logger.e("error: $error");
              logger.e("stackTrack: $stackTrack");

              return Icon(Icons.error);
            },
          ),
        ),

        const HeightSpace(height: 42.41),
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19.5),
            child: Text(
              "Mantenha sua\nPokédex atualizada",
              style: context.displayMedium,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const HeightSpace(height: 16),
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19.5),
            child: Text(
              "Cadastre-se e mantenha seu perfil,\n pokémon favoritos, configurações e muito\n mais, salvos no aplicativo, mesmo sem\n conexão com a internet.",
              style: context.bodyMedium?.copyWith(color: Greys["600"]),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
