import 'package:flutter/material.dart';
import 'package:flutter_pokedex/presentation/theme/common_color.dart';
import 'package:flutter_pokedex/presentation/theme/custom_text_theme.dart';

class PokeTextButton extends StatelessWidget {
  final VoidCallback callback;
  final String title;
  final Color backgroundColor;
  final Color textColor;

  const PokeTextButton({
    super.key,
    required this.callback,
    required this.title,
    this.backgroundColor = blue,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 58,
      child: TextButton(
        onPressed: () => callback(),
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(backgroundColor),
        ),
        child: Text(
          title,
          style: context.headlineLarge?.copyWith(color: textColor),
        ),
      ),
    );
  }
}
