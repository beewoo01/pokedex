import 'package:flutter/material.dart';
import 'package:flutter_pokedex/gen/assets.gen.dart';
import 'package:flutter_pokedex/presentation/component/poke_app_bar.dart';
import 'package:flutter_pokedex/presentation/component/poke_text_button.dart';
import 'package:flutter_pokedex/presentation/component/width_and_height.dart';
import 'package:flutter_pokedex/presentation/router/route_path.dart';
import 'package:flutter_pokedex/presentation/theme/common_color.dart';
import 'package:flutter_pokedex/presentation/theme/custom_text_theme.dart';
import 'package:flutter_pokedex/utils/app_spacing.dart';
import 'package:flutter_pokedex/presentation/component/poke_text_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

final passwordObscureState = StateProvider<bool>((ref) => true);

class LoginEmailScreen extends ConsumerWidget {
  const LoginEmailScreen({super.key});

  final int bottomSpace = 40;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isObscure = ref.watch(passwordObscureState);
    return Scaffold(
      appBar: PokeAppBar(callback: () => context.pop(), title: "Entrar"),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                children: [
                  const VGap(height: AppSpacing.spacing40),

                  Text("Bem vindo de volta!", style: context.displaySmall),

                  Text("Preencha os dados", style: context.displayLarge),

                  const VGap(height: AppSpacing.spacing24),

                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      "E-mail",
                      style: context.labelMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  const VGap(height: AppSpacing.spacing8),

                  PokeTextField(
                    onChanged: (value) {},
                    keyboardType: TextInputType.emailAddress,
                    hint: "E-mail",
                  ),

                  const VGap(height: AppSpacing.spacing16),

                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Senha",
                      style: context.labelMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  const VGap(height: AppSpacing.spacing8),

                  PokeTextField(
                    onChanged: (value) {},
                    keyboardType: TextInputType.text,
                    hint: "Senha",
                    obscureText: isObscure,
                    suffixIcon: IconButton(
                      onPressed: () =>
                          ref.read(passwordObscureState.notifier).state =
                              !isObscure,
                      icon: SvgPicture.asset(Assets.icons.icEye.path),
                    ),
                  ),

                  const VGap(height: AppSpacing.spacing24),

                  PokeTextButton(
                    callback: () => context.push(RoutePath.findPassword),
                    title: "Esqueceu sua senha?",
                    backgroundColor: Colors.white,
                    textColor: blue,
                    style: context.labelSmall?.copyWith(fontSize: 14),
                  ),

                  VGap(
                    height:
                        MediaQuery.of(context).viewInsets.bottom + bottomSpace,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: PokeTextButton(
            callback: () => context.pushReplacement(RoutePath.loginSuccess),
            title: "Entrar",
          ),
        ),
      ),
    );
  }
}
