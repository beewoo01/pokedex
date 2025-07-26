import 'package:flutter/material.dart';
import 'package:flutter_pokedex/presentation/theme/common_color.dart';
import 'package:flutter_pokedex/presentation/theme/custom_text_theme.dart';

class DefaultTextButton extends StatelessWidget {
  final VoidCallback callback;
  final String title;

  const DefaultTextButton({
    super.key,
    required this.callback,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: double.infinity,
        height: 58,
        child: TextButton(
          onPressed: () => callback,
          style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Blue)),
          child: Text(
            title,
            style: context.headlineLarge?.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
