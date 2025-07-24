import 'package:flutter_pokedex/presentation/router/type_router.dart';
import 'package:go_router/go_router.dart';
import 'route_path.dart';

final router = GoRouter(initialLocation: RoutePath.SPLASH, routes: $appRoutes);