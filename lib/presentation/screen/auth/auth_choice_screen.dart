import 'package:flutter/material.dart';
import 'package:flutter_pokedex/gen/assets.gen.dart';
import 'package:flutter_pokedex/presentation/component/poke_text_button.dart';
import 'package:flutter_pokedex/presentation/component/width_and_height.dart';
import 'package:flutter_pokedex/presentation/theme/common_color.dart';
import 'package:flutter_pokedex/presentation/theme/custom_text_theme.dart';
import 'package:flutter_pokedex/utils/trainer_images.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthChoiceScreen extends StatelessWidget {
  const AuthChoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const HeightSpace(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Pular",
                style: context.headlineMedium?.copyWith(
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(Assets.icons.arrowForward.path),
              ),
            ],
          ),
          const HeightSpace(height: 94),
          SizedBox(
            height: 272,
            child: Stack(
              children: [
                Positioned(
                  left: 21,
                  right: 141,
                  child: FadeInImage.assetNetwork(
                    placeholder: "assets/images/empty.png",
                    image: TrainerImages.yancy,
                    fit: BoxFit.fitHeight,
                    height: 272,
                  ),
                ),
                Positioned(
                  left: 120,
                  right: -17,
                  child: FadeInImage.assetNetwork(
                    placeholder: "assets/images/empty.png",
                    image: TrainerImages.hilbert,
                    fit: BoxFit.fitHeight,
                    height: 272,
                  ),
                ),

              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const HeightSpace(height: 39),
                Text(
                  "Está pronto para essa aventura?",
                  style: context.displayLarge?.copyWith(color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                const HeightSpace(height: 16),
                Text(
                  "Basta criar uma conta e começar a explorar o mundo dos Pokémon hoje!",
                  style: context.bodyMedium?.copyWith(color: Greys["600"]),
                  textAlign: TextAlign.center,
                ),
                const HeightSpace(height: 32),
                PokeTextButton(callback: () {}, title: "Criar conta"),
                PokeTextButton(
                  callback: () {},
                  title: "Ja tenho uma conta",
                  backgroundColor: Colors.white,
                  textColor: Blue,
                ),
              ],
            ),
          ),
          const HeightSpace(height: 40),
        ],
      ),
    );
  }
}
