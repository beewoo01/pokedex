import 'package:flutter/material.dart';
import 'package:flutter_pokedex/gen/assets.gen.dart';
import 'package:flutter_pokedex/presentation/component/width_and_height.dart';
import 'package:flutter_pokedex/presentation/theme/common_color.dart';
import 'package:flutter_pokedex/presentation/theme/custom_text_theme.dart';
import 'package:flutter_pokedex/utils/app_spacing.dart';
import 'package:flutter_pokedex/utils/trainer_images.dart';

class SecondOnBoardingScreen extends StatelessWidget {
  const SecondOnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const double spaceHeight = 42.41;

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          height: AppSpacing.trainerHeight,
          child: FadeInImage.assetNetwork(
            fadeInCurve: Curves.bounceIn,
            placeholder: Assets.images.empty.path,
            height: AppSpacing.trainerHeight,
            image: TrainerImages.hilda,
            fit: BoxFit.fitHeight,
          ),
        ),

        const VGap(height: spaceHeight),

        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.spacing19_5,
            ),
            child: Text(
              "Mantenha sua Pokédex atualizada",
              style: context.displayMedium,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const VGap(height: AppSpacing.spacing16),
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.spacing19_5,
            ),
            child: Text(
              "Cadastre-se e mantenha seu perfil, pokémon favoritos, configurações e muito mais, salvos no aplicativo, mesmo sem conexão com a internet.",
              style: context.bodyMedium?.copyWith(color: greys["600"]),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
