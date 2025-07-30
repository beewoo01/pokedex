import 'package:flutter/material.dart';
import 'package:flutter_pokedex/presentation/component/poke_app_bar.dart';
import 'package:go_router/go_router.dart';

class LoginEmail extends StatelessWidget {
  const LoginEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PokeAppBar(
          callback: () => context.pop(),
          title: "Entrar"
      ),
    );
  }
}
