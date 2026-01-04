import 'package:flutter/material.dart';
import 'package:flutter_pokedex/presentation/component/poke_app_bar.dart';
import 'package:flutter_pokedex/presentation/component/poke_text_button.dart';
import 'package:flutter_pokedex/presentation/component/width_and_height.dart';
import 'package:flutter_pokedex/presentation/screen/auth/password/viewmodel/find_password_view_model.dart';
import 'package:flutter_pokedex/presentation/theme/common_color.dart';
import 'package:flutter_pokedex/presentation/theme/custom_text_theme.dart';
import 'package:flutter_pokedex/utils/app_spacing.dart';
import 'package:flutter_pokedex/utils/poke_text_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class FindPassword extends ConsumerWidget {
  const FindPassword({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(findPasswordViewModelProvider);

    final viewModel = ref.read(findPasswordViewModelProvider.notifier);

    return Scaffold(
      appBar: PokeAppBar(callback: context.pop, title: 'Esqueci minha senha'),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSpacing.spacing16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const VGap(height: AppSpacing.spacing40),

                Text("Vamos recuperar!", style: context.displaySmall),

                Text("Qual é o seu e-mail?", style: context.displayLarge),

                const VGap(height: AppSpacing.spacing24),

                PokeTextField(
                  onChanged: (value) => viewModel.onEmailChanged(value),
                  keyboardType: TextInputType.emailAddress,
                  hint: 'E-mail',
                ),

                const VGap(height: AppSpacing.spacing8),

                Text(
                  "Vamos enviar um código de verificação para o seu e-mail.",
                  style: context.bodySmall?.copyWith(color: greys['700']),
                  textAlign: TextAlign.center,
                ),
                const Spacer(),

                PokeTextButton(
                  callback: viewModel.findPassword,
                  isEnable: state.isEmailValid,
                  title: "Continuar",
                  backgroundColor: !state.isEmailValid ? greys['100']! : blue,
                  textColor: !state.isEmailValid ? greys['400']! : Colors.white,
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
