import 'package:flutter/material.dart';
import 'package:flutter_pokedex/gen/assets.gen.dart';
import 'package:flutter_pokedex/presentation/component/poke_text_button.dart';
import 'package:flutter_pokedex/presentation/component/width_and_height.dart';
import 'package:flutter_pokedex/presentation/theme/common_color.dart';
import 'package:flutter_pokedex/presentation/theme/custom_text_theme.dart';
import 'package:flutter_pokedex/utils/app_spacing.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

final emailProvider = StateProvider<String>((ref) => '');

final isEmailValidProvider = Provider<bool>((ref) {
  final email = ref.watch(emailProvider);
  final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  return emailRegex.hasMatch(email);
});

class JoinEmailScreen extends ConsumerWidget {
  const JoinEmailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isValid = ref.watch(isEmailValidProvider);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: SvgPicture.asset(Assets.icons.arrowBackButton.path),
        ),
        centerTitle: true,
        title: Text("Criar conta", style: context.headlineLarge),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const HeightSpace(height: AppSpacing.spacing40),

                Text("Vamos começar!", style: context.displaySmall),

                Text("Qual é o seu e-mail?", style: context.displayLarge),

                const HeightSpace(height: AppSpacing.spacing24),

                TextField(
                  onChanged: (value) =>
                      ref.read(emailProvider.notifier).state = value,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hint: Text(
                      "E-mail",
                      style: context.bodyLarge?.copyWith(color: greys['400']),
                    ),
                    enabledBorder: outlinedBorder(),
                    disabledBorder: outlinedBorder(),
                    focusedBorder: outlinedBorder(borderColor: black),
                  ),
                ),

                const HeightSpace(height: 8),

                Text(
                  "Use um endereço de e-mail válido.",
                  style: context.bodySmall?.copyWith(color: greys['700']),
                ),
                const Spacer(),

                PokeTextButton(
                  callback: () {
                    if(isValid) {

                    }
                  },
                  isEnable: isValid,
                  title: "Continear",
                  backgroundColor: !isValid? greys['100']! : blue,
                  textColor: !isValid? greys['400']! : Colors.white,
                ),

                const HeightSpace(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder outlinedBorder({Color? borderColor}) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: borderColor ?? greys['400']!),
      borderRadius: BorderRadius.all(Radius.circular(5)),
    );
  }
}
