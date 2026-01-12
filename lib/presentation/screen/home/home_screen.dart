import 'package:flutter/material.dart';
import 'package:flutter_pokedex/presentation/screen/home/favories/favories.dart';
import 'package:flutter_pokedex/presentation/screen/home/home_tab.dart';
import 'package:flutter_pokedex/presentation/screen/home/poke/poke_dex_tab.dart';
import 'package:flutter_pokedex/presentation/screen/home/profile/profile_tab.dart';
import 'package:flutter_pokedex/presentation/screen/home/regions/region_tab.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final currentTabProvider = StateProvider<HomeTab>((ref) => HomeTab.pokedex);

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedTab = ref.watch(currentTabProvider);

    return Scaffold(
      body: _getTabScreen(selectedTab),
      bottomNavigationBar: CustomBottomNavitaionBar(
        currentTab: selectedTab,
        onTab: (HomeTab homeTab) {
          ref.read(currentTabProvider.notifier).state = homeTab;
        },
      ),
    );
  }

  Widget _getTabScreen(HomeTab tab) {
    switch (tab) {
      case HomeTab.pokedex:
        return const PokeDexTab();
      case HomeTab.regions:
        return const RegionTab();
      case HomeTab.favorites:
        return const FavoriesTab();
      case HomeTab.profile:
        return ProfileTab();
    }
  }
}

class CustomBottomNavitaionBar extends StatefulWidget {
  final HomeTab currentTab;
  final Function(HomeTab) onTab;
  const CustomBottomNavitaionBar({
    super.key,
    required this.currentTab,
    required this.onTab,
  });

  @override
  State<CustomBottomNavitaionBar> createState() =>
      _CustomBottomNavitaionBarState();
}

class _CustomBottomNavitaionBarState extends State<CustomBottomNavitaionBar> {

  @override
  Widget build(BuildContext context) {
    final List<Widget> widgets = HomeTab.values.map((tab) {
      return BottomNavigationBarItem(
        tab: tab,
        isSelected: tab == widget.currentTab,
        onTap: () => widget.onTab(tab),
      );
    }).toList();

    return SizedBox(
      height: 72,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: widgets,
      ),
    );
  }
}

class BottomNavigationBarItem extends ConsumerWidget {
  final HomeTab tab;
  final bool isSelected;
  final VoidCallback onTap;
  const BottomNavigationBarItem({
    super.key,
    required this.tab,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 60,
        height: 60,
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
      ),
    );
  }
}

class SelectIcon extends StatelessWidget {
  final HomeTab tab;
  const SelectIcon({super.key, required this.tab});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        tab.getOnIcon.svg(width: 26, height: 26, fit: BoxFit.fitHeight),
        Text(
          tab.label,
          style: Theme.of(
            context,
          ).textTheme.labelSmall?.copyWith(color: Color(0xFF173EA5)),
        ),
      ],
    );
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
