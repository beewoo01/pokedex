import 'package:flutter/material.dart';
import 'package:flutter_pokedex/presentation/component/poke_app_bar.dart';
import 'package:flutter_pokedex/presentation/component/width_and_height.dart';
import 'package:flutter_pokedex/utils/app_spacing.dart';
import 'package:go_router/go_router.dart';

class LoginEmailScreen extends StatelessWidget {
  const LoginEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PokeAppBar(
          callback: () => context.pop(),
          title: "Entrar"
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const VGap(height: AppSpacing.height40),

          ]
        )
      ),
    );
  }
}
