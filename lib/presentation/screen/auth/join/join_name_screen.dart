import 'package:flutter/material.dart';
import 'package:flutter_pokedex/presentation/component/poke_app_bar.dart';
import 'package:flutter_pokedex/presentation/component/poke_text_button.dart';
import 'package:flutter_pokedex/presentation/component/width_and_height.dart';
import 'package:flutter_pokedex/presentation/router/route_path.dart';
import 'package:flutter_pokedex/presentation/theme/common_color.dart';
import 'package:flutter_pokedex/presentation/theme/custom_text_theme.dart';
import 'package:flutter_pokedex/utils/app_spacing.dart';
import 'package:flutter_pokedex/utils/poke_text_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final nameProvider = StateProvider<String>((ref) => '');

final isNameValidProvider = Provider<bool>((ref) {
  final name = ref.watch(nameProvider);
  final nameRegex = RegExp(r'^[a-zA-Z가-힣1-9]{2,}$');
  return nameRegex.hasMatch(name);
});

class JoinNameScreen extends ConsumerWidget {
  const JoinNameScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isValid = ref.watch(isNameValidProvider);

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
                const HeightSpace(height: AppSpacing.spacing40),

                Text("Pra finalizar", style: context.displaySmall),

                Text("Qual é o seu nome?", style: context.displayLarge),

                const HeightSpace(height: AppSpacing.spacing24),

                PokeTextField(
                  onChanged: (value) => ref.read(nameProvider.notifier).state = value,
                  keyboardType: TextInputType.name,
                  hint: 'Name',
                ),

                const HeightSpace(height: 8),

                Text(
                  "Esse será seu nome de usuário no aplicativo.",
                  style: context.bodySmall?.copyWith(color: greys['700']),
                ),
                const Spacer(),

                PokeTextButton(
                  callback: () {
                    if (isValid) {

                    }
                  },
                  isEnable: isValid,
                  title: "Continuar",
                  backgroundColor: !isValid ? greys['100']! : blue,
                  textColor: !isValid ? greys['400']! : Colors.white,
                ),

                const HeightSpace(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
