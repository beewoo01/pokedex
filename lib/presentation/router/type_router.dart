import 'package:flutter/material.dart';
import 'package:flutter_pokedex/presentation/router/route_path.dart';
import 'package:flutter_pokedex/presentation/screen/auth/auth_choice_screen.dart';
import 'package:flutter_pokedex/presentation/screen/auth/join/join_email_screen.dart';
import 'package:flutter_pokedex/presentation/screen/auth/join/join_name_screen.dart';
import 'package:flutter_pokedex/presentation/screen/auth/join/join_password_screen.dart';
import 'package:flutter_pokedex/presentation/screen/auth/join/join_screen.dart';
import 'package:flutter_pokedex/presentation/screen/auth/join/join_success_screen.dart';
import 'package:flutter_pokedex/presentation/screen/auth/login/login_email_screen.dart';
import 'package:flutter_pokedex/presentation/screen/auth/login/login_screen.dart';
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

@TypedGoRoute<AuthChoiceRoute>(path: RoutePath.authChoice)
class AuthChoiceRoute extends GoRouteData with _$AuthChoiceRoute {
  const AuthChoiceRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const AuthChoiceScreen();
}

@TypedGoRoute<JoinRoute>(
  path: RoutePath.join,
  routes: [
    TypedGoRoute<JoinEmailRoute>(path: 'email'),
    TypedGoRoute<JoinPasswordRoute>(path: 'password'),
    TypedGoRoute<JoinNameRoute>(path: 'name'),
    TypedGoRoute<JoinSuccessRoute>(path: 'success'),
  ],
)
class JoinRoute extends GoRouteData with _$JoinRoute {
  const JoinRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const JoinScreen();
}

class JoinEmailRoute extends GoRouteData with _$JoinEmailRoute {
  const JoinEmailRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const JoinEmailScreen();
}

class JoinPasswordRoute extends GoRouteData with _$JoinPasswordRoute {
  const JoinPasswordRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const JoinPasswordScreen();
}

class JoinNameRoute extends GoRouteData with _$JoinNameRoute {
  const JoinNameRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const JoinNameScreen();
}

class JoinSuccessRoute extends GoRouteData with _$JoinSuccessRoute {
  const JoinSuccessRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const JoinSuccessScreen();
}

@TypedGoRoute<LoginRoute>(
    path: RoutePath.login,
    routes: [
      TypedGoRoute<LoginEmailRoute>(path: 'email')
    ]
)
class LoginRoute extends GoRouteData with _$LoginRoute {
  const LoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return LoginScreen();
  }
}

class LoginEmailRoute extends GoRouteData with _$LoginEmailRoute {
  const LoginEmailRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return LoginEmailScreen();
  }
}
