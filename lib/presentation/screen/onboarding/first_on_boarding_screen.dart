import 'package:flutter/material.dart';
import 'package:flutter_pokedex/gen/assets.gen.dart';
import 'package:flutter_pokedex/presentation/component/custom_network_image.dart';
import 'package:flutter_pokedex/presentation/component/width_and_height.dart';
import 'package:flutter_pokedex/presentation/theme/common_color.dart';
import 'package:flutter_pokedex/presentation/theme/custom_text_theme.dart';
import 'package:flutter_pokedex/utils/app_spacing.dart';
import 'package:flutter_pokedex/utils/trainer_images.dart';

class FirstOnBoardingScreen extends StatelessWidget {
  const FirstOnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const double trainerWidgetHeight = 264;

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          width: double.infinity,
          height: trainerWidgetHeight,
          child: Stack(
            children: [
              Positioned.fill(
                left: 10,
                bottom: 0,
                right: 110,
                child: FadeInImage.assetNetwork(
                  fadeInCurve: Curves.easeIn,
                  placeholder: Assets.images.empty.path,
                  height: 258.59,
                  image: TrainerImages.bugCatcher,
                  fit: BoxFit.fitHeight,
                ),
              ),

              Positioned.fill(
                bottom: 0,
                right: 1,
                left: 102,
                child: FadeInImage.assetNetwork(
                  fadeInCurve: Curves.easeIn,
                  placeholder: Assets.images.empty.path,
                  height: 258.59,
                  image: TrainerImages.birch,
                  fit: BoxFit.fitHeight,
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
        const HeightSpace(height: AppSpacing.spacing16),
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19.5),
            child: Text(
              "Acesse uma vasta lista de Pokémon de todas as gerações já feitas pela Nintendo",
              style: context.bodyMedium?.copyWith(color: greys["600"]),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
