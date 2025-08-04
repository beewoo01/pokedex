import 'package:flutter/material.dart';
import 'package:flutter_pokedex/presentation/theme/common_color.dart';
import 'package:flutter_pokedex/presentation/theme/custom_text_theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialLoginButton extends StatelessWidget {
  final String iconPath;
  final String title;
  final VoidCallback callback;

  const SocialLoginButton({
    super.key,
    required this.iconPath,
    required this.title,
    required this.callback
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58,
      child: OutlinedButton(
        onPressed: () => callback(),
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: lightGrey),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
              iconPath,
              width: 26,
              height: 26,
            ),
            Expanded(
              child: Text(
                title,
                style: context.labelLarge,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
