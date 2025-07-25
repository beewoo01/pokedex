import 'package:flutter/material.dart';
import 'package:flutter_pokedex/presentation/theme/common_color.dart';
import 'package:flutter_pokedex/presentation/theme/text_theme.dart';

class OnBoardingRoot extends StatelessWidget {
  const OnBoardingRoot({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              /*Image.network(
                "https://play.pokemonshowdown.com/sprites/trainers/bugcatcher-gen4dp.png",
              ),*/
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
                      ),
                    ),

                    Positioned.fill(
                      bottom: 0,
                      right: 1,
                      left: 102,
                      child: Image.network(
                        "https://play.pokemonshowdown.com/sprites/trainers/birch.png",
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 19.5),
                  child: Text(
                    "Todos os Pokémons em um só Lugar",
                    style: textTheme.displayMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 19.5),
                  child: Text(
                    "Acesse uma vasta lista de Pokémon de todas as gerações já feitas pela Nintendo",
                    style: textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

              PageIndicator()
            ],
          ),
        ),
      ),
    );
  }
}

class PageIndicator extends StatefulWidget {
  const PageIndicator({super.key});

  @override
  State<PageIndicator> createState() => _PageIndicatorState();
}

class _PageIndicatorState extends State<PageIndicator> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        2,
        (index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: AnimatedContainer(
            curve: Curves.easeIn,
            duration: const Duration(microseconds: 500),
            decoration: BoxDecoration(
              color: ThinPurple,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
    );
  }
}
