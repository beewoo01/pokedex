import 'package:flutter/material.dart';
import 'package:flutter_pokedex/gen/assets.gen.dart';
import 'package:flutter_pokedex/presentation/component/poke_text_button.dart';
import 'package:flutter_pokedex/presentation/component/width_and_height.dart';
import 'package:flutter_pokedex/presentation/router/route_path.dart';
import 'package:flutter_pokedex/presentation/theme/common_color.dart';
import 'package:flutter_pokedex/presentation/theme/custom_text_theme.dart';
import 'package:flutter_pokedex/utils/app_spacing.dart';
import 'package:flutter_pokedex/utils/trainer_images.dart';
import 'package:go_router/go_router.dart';

class LoginSuccessScreen extends StatelessWidget {
  const LoginSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 13.5 / 20,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: FractionallySizedBox(
                          heightFactor: 0.57,
                          child: FractionalTranslation(
                            translation: const Offset(-0.10, 0),
                            child: FadeInImage.assetNetwork(
                              placeholder: Assets.images.empty.path,
                              image: TrainerImages.blue,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: FractionallySizedBox(
                          heightFactor: 0.56,
                          child: FadeInImage.assetNetwork(
                            placeholder: Assets.images.empty.path,
                            image: TrainerImages.cynthia,
                            fit: BoxFit.fitHeight,
                            excludeFromSemantics: false,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const VGap(height: 51),
                Text(
                  "Bem-vindo de volta, Treinador!",
                  style: context.displayMedium?.copyWith(color: Colors.black),
                  textAlign: TextAlign.center,
                ),

                const VGap(height: AppSpacing.spacing16),

                Text(
                  "Esperamos que tenha tido uma longa jornada desde a última vez em que nos visitou.",
                  style: context.bodyMedium?.copyWith(color: greys["600"]),
                  textAlign: TextAlign.center,
                ),

                const VGap(height: AppSpacing.height32),

                PokeTextButton(
                  callback: () {
                    context.push(RoutePath.home);
                  },
                  title: "Continuar",
                ),

                const VGap(height: AppSpacing.height40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
