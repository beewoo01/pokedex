import 'package:flutter/material.dart';
import 'package:flutter_pokedex/presentation/theme/common_color.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(color: circleIndicatorProgressColor),
    );
  }
}
