import 'package:flutter/material.dart';
import 'package:flutter_pokedex/gen/assets.gen.dart';
import 'package:flutter_pokedex/presentation/component/poke_app_bar.dart';
import 'package:flutter_pokedex/presentation/component/poke_text_button.dart';
import 'package:flutter_pokedex/presentation/component/social_login_button.dart';
import 'package:flutter_pokedex/presentation/component/width_and_height.dart';
import 'package:flutter_pokedex/presentation/router/route_path.dart';
import 'package:flutter_pokedex/presentation/theme/common_color.dart';
import 'package:flutter_pokedex/presentation/theme/custom_text_theme.dart';
import 'package:flutter_pokedex/utils/app_spacing.dart';
import 'package:flutter_pokedex/utils/trainer_images.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class JoinScreen extends StatelessWidget {
  const JoinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PokeAppBar(callback: () => context.pop(), title: 'Criar conta'),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const VGap(height: AppSpacing.spacing48),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSpacing.spacing47),
              child: FadeInImage.assetNetwork(
                fadeInCurve: Curves.bounceInOut,
                placeholder: Assets.images.empty.path,
                image: TrainerImages.wallace6,
                width: double.infinity,
                fit: BoxFit.fitHeight,
              ),
            ),
            const VGap(height: AppSpacing.spacing23),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.spacing19_5,
                ),
                child: Text(
                  "Falta pouco para explorar esse mundo!",
                  style: context.displayMedium,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const VGap(height: AppSpacing.spacing16),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.spacing16,
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.spacing19_5,
                      ),
                      child: Text(
                        "Como deseja se conectar?",
                        style: context.bodyMedium?.copyWith(
                          color: greys["600"],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),

                  const VGap(height: AppSpacing.height32),
                  SocialLoginButton(
                    iconPath: Assets.icons.icAppleLogin.path,
                    title: "Continuar com a Apple",
                    callback: () {
                      return;
                    },
                  ),
                  const VGap(height: AppSpacing.spacing12),
                  SocialLoginButton(
                    iconPath: Assets.icons.icGoogleLogin.path,
                    title: "Continuar com o Google",
                    callback: () {
                      return;
                    },
                  ),
                  const VGap(height: AppSpacing.spacing12),
                  PokeTextButton(
                    callback: () => context.push(RoutePath.joinEmail),
                    title: "Continuar com um e-mail",
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
