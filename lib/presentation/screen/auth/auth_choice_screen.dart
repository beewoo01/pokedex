import 'package:flutter/material.dart';
import 'package:flutter_pokedex/gen/assets.gen.dart';
import 'package:flutter_pokedex/presentation/component/poke_text_button.dart';
import 'package:flutter_pokedex/presentation/component/width_and_height.dart';
import 'package:flutter_pokedex/presentation/router/route_path.dart';
import 'package:flutter_pokedex/presentation/theme/common_color.dart';
import 'package:flutter_pokedex/presentation/theme/custom_text_theme.dart';
import 'package:flutter_pokedex/utils/app_spacing.dart';
import 'package:flutter_pokedex/utils/trainer_images.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class AuthChoiceScreen extends StatelessWidget {
  const AuthChoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const double toolbarToTrainer = 94;
    const double trainerHeight = 272;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const HeightSpace(height: AppSpacing.height40),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Pular",
                style: context.headlineMedium?.copyWith(color: Colors.black),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(Assets.icons.arrowForward.path),
              ),
            ],
          ),
          const HeightSpace(height: toolbarToTrainer),
          SizedBox(
            height: trainerHeight,
            child: Stack(
              children: [
                Positioned(
                  left: 21,
                  right: 141,
                  child: FadeInImage.assetNetwork(
                    height: trainerHeight,
                    placeholder: Assets.images.empty.path,
                    image: TrainerImages.yancy,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Positioned(
                  left: 120,
                  right: -17,
                  child: FadeInImage.assetNetwork(
                    height: trainerHeight,
                    placeholder: Assets.images.empty.path,
                    image: TrainerImages.hilbert,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSpacing.spacing16),
            child: Column(
              children: [
                const HeightSpace(height: 39),
                Text(
                  "Está pronto para essa aventura?",
                  style: context.displayMedium?.copyWith(color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                const HeightSpace(height: AppSpacing.spacing16),
                Text(
                  "Basta criar uma conta e começar a explorar o mundo dos Pokémon hoje!",
                  style: context.bodyMedium?.copyWith(color: greys["600"]),
                  textAlign: TextAlign.center,
                ),
                const HeightSpace(height: AppSpacing.spacing32),
                PokeTextButton(
                  callback: () => context.push(RoutePath.join),
                  title: "Criar conta",
                ),
                PokeTextButton(
                  callback: () {
                    //TODO : Move Login Screen
                  },
                  title: "Ja tenho uma conta",
                  backgroundColor: Colors.white,
                  textColor: blue,
                ),
              ],
            ),
          ),
          const HeightSpace(height: AppSpacing.height40),
        ],
      ),
    );
  }
}
