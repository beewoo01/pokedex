import 'package:flutter/material.dart';
import 'package:flutter_pokedex/presentation/component/width_and_height.dart';
import 'package:flutter_pokedex/presentation/theme/common_color.dart';
import 'package:flutter_pokedex/presentation/theme/custom_text_theme.dart';

import '../../../utils/logger.dart';

class FirstOnBoardingScreen extends StatelessWidget {
  const FirstOnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          width: double.infinity,
          height: 264,
          child: Stack(
            children: [
              Positioned.fill(
                left: 10,
                bottom: 0,
                right: 110,
                child: Image.network(
                  "https://play.pokemonshowdown.com/sprites/trainers/bugcatcher-gen4dp.png",
                  fit: BoxFit.fitHeight,
                  errorBuilder: (context, error, stackTrack) {
                    logger.e("error: $error");
                    logger.e("stackTrack: $stackTrack");

                    return Icon(Icons.error);
                  },
                ),
              ),

              Positioned.fill(
                bottom: 0,
                right: 1,
                left: 102,
                child: Image.network(
                  "https://play.pokemonshowdown.com/sprites/trainers/birch.png",
                  fit: BoxFit.fitHeight,
                  errorBuilder: (context, error, stackTrack) {
                    logger.e("error: $error");
                    logger.e("stackTrack: $stackTrack");

                    return Icon(Icons.error);
                  },
                ),
              ),
            ],
          ),
        ),

        const HeightSpace(height: 37.11),

        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19.5),
            child: Text(
              "Todos os Pokémons em um só Lugar",
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
              "Acesse uma vasta lista de Pokémon de todas as gerações já feitas pela Nintendo",
              style: context.bodyMedium?.copyWith(color: Greys["600"]),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
