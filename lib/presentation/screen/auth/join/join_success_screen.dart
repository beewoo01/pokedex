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

class JoinSuccessScreen extends StatelessWidget {
  const JoinSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const double trainerHeight = 318;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: trainerHeight + 158,
                child: Stack(
                  children: [
                    Positioned.fill(
                      top: 0,
                      child: Image.asset(
                        Assets.images.checkBg.path,
                        fit: BoxFit.fitWidth,
                      ),
                    ),

                    Positioned(
                      left: -11,
                      right: 123,
                      bottom: 0,
                      child: FadeInImage.assetNetwork(
                        height: trainerHeight,
                        placeholder: Assets.images.empty.path,
                        image: TrainerImages.wallace,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Positioned(
                      left: 80.49,
                      right: -38.73,
                      bottom: 0,
                      child: FadeInImage.assetNetwork(
                        height: trainerHeight,
                        placeholder: Assets.images.empty.path,
                        image: TrainerImages.lucian,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ],
                ),
              ),

              const HeightSpace(height: 57),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSpacing.spacing16),
                child: Column(
                  children: [
                    const HeightSpace(height: 51),
                    Text(
                      "Sua conta foi criada com Sucesso!",
                      style: context.displayMedium?.copyWith(color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                    const HeightSpace(height: AppSpacing.spacing16),
                    Text(
                      "Seja bem-vindo, treinador! Estamos animados para acompanhar sua jornada.",
                      style: context.bodyMedium?.copyWith(color: greys["600"]),
                      textAlign: TextAlign.center,
                    ),
                    const HeightSpace(height: AppSpacing.spacing32),
                    PokeTextButton(
                      callback: () {
                        context.push(RoutePath.joinPassword);
                      },
                      title: "Continuar",
                    ),
                  ],
                ),
              ),
              const HeightSpace(height: AppSpacing.spacing40),
            ],
          ),
        ),
      ),
    );
  }
}
