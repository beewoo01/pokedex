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

final obscureProvider = StateProvider<bool>((ref) => true);
final passwordProvider = StateProvider<String>((ref) => '');

final isPasswordValidProvider = Provider<bool>((ref) {
  final password = ref.watch(passwordProvider);
  final passwordRegex = RegExp(
    r'^(?=.*[A-Z])(?=.*[!@#$%^&*(),.?":{}|<>]).{8,}$',
  );

  return passwordRegex.hasMatch(password);
});

class JoinPasswordScreen extends ConsumerWidget {
  const JoinPasswordScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final obscureState = ref.watch(obscureProvider);
    final isValid = ref.watch(isPasswordValidProvider);

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

                Text("Agora...", style: context.displaySmall),

                Text("Crie uma senha", style: context.displayLarge),

                const VGap(height: AppSpacing.spacing24),

                PokeTextField(
                  onChanged: (value) =>
                      ref.read(passwordProvider.notifier).state = value,
                  obscureText: obscureState,
                  keyboardType: TextInputType.text,
                  hint: 'Senha',
                  suffixIcon: IconButton(
                    onPressed: () {
                      ref.read(obscureProvider.notifier).state = !obscureState;
                    },
                    icon: SvgPicture.asset(Assets.icons.icEye.path),
                  ),
                ),

                const VGap(height: AppSpacing.spacing8),

                Text(
                  "Sua senha deve ter pelo menos 8 caracteres",
                  style: context.bodySmall?.copyWith(color: greys['700']),
                ),
                const Spacer(),

                PokeTextButton(
                  callback: () {
                    if (isValid) {
                      context.push(RoutePath.joinName);
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
