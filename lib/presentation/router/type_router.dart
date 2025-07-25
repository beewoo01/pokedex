import 'package:flutter/material.dart';
import 'package:flutter_pokedex/presentation/router/route_path.dart';
import 'package:flutter_pokedex/presentation/screen/onboarding/on_boarding_root.dart';
import 'package:flutter_pokedex/presentation/screen/splash/splash_screen.dart';
import 'package:go_router/go_router.dart';

part 'type_router.g.dart';

@TypedGoRoute<SplashRoute>(path: RoutePath.splash)
class SplashRoute extends GoRouteData with _$SplashRoute {
  const SplashRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SplashScreen();
}

@TypedGoRoute<OnBoardingRoute>(path: RoutePath.onBoarding)
class OnBoardingRoute extends GoRouteData with _$OnBoardingRoute {
  const OnBoardingRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const OnBoardingRoot();
}