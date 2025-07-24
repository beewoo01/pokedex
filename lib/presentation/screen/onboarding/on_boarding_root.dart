import 'package:flutter/material.dart';
import 'package:flutter_pokedex/presentation/theme/common_color.dart';

class OnBoardingRoot extends StatelessWidget {
  const OnBoardingRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColoredBox(
        color: Colors.white,
        child: Column(
          children: [
            const Spacer(),
            Align(
              alignment: Alignment.center,
              child: Stack(
                children: [
                  Positioned(
                    left : 10,
                    child: Image.network(
                      "https://play.pokemonshowdown.com/sprites/trainers/bugcatcher-gen4dp.png",
                    ),
                  ),
                ],
              ),
            ),
          ],
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
