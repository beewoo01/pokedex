import 'package:flutter/material.dart';
import 'package:flutter_pokedex/presentation/component/poke_app_bar.dart';
import 'package:flutter_pokedex/presentation/component/poke_text_button.dart';
import 'package:flutter_pokedex/presentation/component/width_and_height.dart';
import 'package:flutter_pokedex/presentation/router/route_path.dart';
import 'package:flutter_pokedex/presentation/theme/common_color.dart';
import 'package:flutter_pokedex/presentation/theme/custom_text_theme.dart';
import 'package:flutter_pokedex/utils/app_spacing.dart';
import 'package:flutter_pokedex/presentation/component/poke_text_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
      appBar: PokeAppBar(callback: () => context.pop(), title: 'Criar conta'),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const VGap(height: AppSpacing.spacing40),

                Text("Vamos começar!", style: context.displaySmall),

                Text("Qual é o seu e-mail?", style: context.displayLarge),

                const VGap(height: AppSpacing.spacing24),

                PokeTextField(
                  onChanged: (value) =>
                      ref.read(emailProvider.notifier).state = value,
                  keyboardType: TextInputType.emailAddress,
                  hint: 'E-mail',
                ),

                const VGap(height: AppSpacing.spacing8),

                Text(
                  "Use um endereço de e-mail válido.",
                  style: context.bodySmall?.copyWith(color: greys['700']),
                ),
                const Spacer(),

                PokeTextButton(
                  callback: () {
                    if (isValid) {
                      context.push(RoutePath.joinPassword);
                    }
                  },
                  isEnable: isValid,
                  title: "Continuar",
                  backgroundColor: !isValid ? greys['100']! : blue,
                  textColor: !isValid ? greys['400']! : Colors.white,
                ),

                const VGap(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
