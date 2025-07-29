import 'package:flutter/material.dart';
import 'package:flutter_pokedex/presentation/component/poke_text_button.dart';
import 'package:flutter_pokedex/presentation/component/width_and_height.dart';
import 'package:flutter_pokedex/presentation/router/route_path.dart';
import 'package:flutter_pokedex/presentation/screen/onboarding/first_on_boarding_screen.dart';
import 'package:flutter_pokedex/presentation/screen/onboarding/second_on_boarding_screen.dart';
import 'package:flutter_pokedex/presentation/theme/custom_text_theme.dart';
import 'package:flutter_pokedex/presentation/theme/common_color.dart';
import 'package:flutter_pokedex/presentation/theme/text_theme.dart';
import 'package:flutter_pokedex/utils/app_spacing.dart';
import 'package:flutter_pokedex/utils/logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class OnBoardingRoot extends ConsumerStatefulWidget {
  const OnBoardingRoot({super.key});

  @override
  ConsumerState<OnBoardingRoot> createState() => _OnBoardingRootState();
}

final currentPageProvider = StateProvider<int>((ref) {
  return 0;
});

class _OnBoardingRootState extends ConsumerState<OnBoardingRoot> {
  final pageController = PageController(initialPage: 0);

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final currentPageNumber = ref.watch(currentPageProvider);
    final pages = [
      const FirstOnBoardingScreen(),
      const SecondOnBoardingScreen(),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              child: PageView(
                controller: pageController,
                pageSnapping: true,
                physics: const NeverScrollableScrollPhysics(),
                children: pages,
              ),
            ),

            const HeightSpace(height: AppSpacing.spacing24),

            PageIndicator(
              currentValue: ref.watch(currentPageProvider),
              pageCount: pages.length,
            ),

            const HeightSpace(height: AppSpacing.spacing24),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.spacing12,
              ),
              child: PokeTextButton(
                callback: () {
                  final isLast = currentPageNumber == pages.length - 1;

                  if (isLast) {
                    context.pushReplacement(RoutePath.authChoice);
                    return;
                  }

                  final targetPage = currentPageNumber + 1;

                  ref.read(currentPageProvider.notifier).state = targetPage;

                  pageController.animateToPage(
                    targetPage,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                title: currentPageNumber != pages.length - 1
                    ? "Continue"
                    : "Vamos começar!",
              ),
            ),

            const HeightSpace(height: AppSpacing.height40),
          ],
        ),
      ),
    );
  }
}

class PageIndicator extends StatelessWidget {
  final int currentValue;
  final int pageCount;

  const PageIndicator({
    super.key,
    this.currentValue = 0,
    required this.pageCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        pageCount,
        (index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: AnimatedContainer(
            curve: Curves.easeIn,
            duration: const Duration(milliseconds: 250),
            width: index == currentValue ? 28 : 9,
            height: 9,
            decoration: BoxDecoration(
              color: index == currentValue ? blue : const Color(0x40000457),
              borderRadius: BorderRadius.circular(11),
            ),
          ),
        ),
      ),
    );
  }
}
