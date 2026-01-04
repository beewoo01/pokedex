import 'package:flutter/material.dart';
import 'package:flutter_pokedex/presentation/screen/home/home_tab.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Placeholder();
  }
}

class BottomNavigationBarItem extends ConsumerWidget {
  final HomeTab tab;
  final bool isSelected;
  const BottomNavigationBarItem({
    super.key,
    required this.tab,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: 56,
      height: 56,
      child: Center(
        child: AnimatedCrossFade(
          firstChild: SelectIcon(tab: tab),
          secondChild: UnSelectedIcon(tab: tab),
          crossFadeState: isSelected
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
          duration: const Duration(milliseconds: 200),
        ),
      ),
    );
  }
}

class SelectIcon extends StatelessWidget {
  final HomeTab tab;
  const SelectIcon({super.key, required this.tab});

  @override
  Widget build(BuildContext context) {
    return tab.getOnIcon.svg(width: 26, height: 26, fit: BoxFit.fitHeight);
  }
}

class UnSelectedIcon extends StatelessWidget {
  final HomeTab tab;
  const UnSelectedIcon({super.key, required this.tab});

  @override
  Widget build(BuildContext context) {
    return tab.getOffIcon.svg(width: 26, height: 26, fit: BoxFit.fitHeight);
  }
}
