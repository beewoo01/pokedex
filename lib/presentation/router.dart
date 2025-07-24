import 'package:flutter_pokedex/presentation/type_router.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(initialLocation: SPLASH, routes: [
  // TypedGoRoute<SplashRoute>(path: SPLASH),

]);



const SPLASH = "/splash";
