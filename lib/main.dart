import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_pokedex/presentation/router/router.dart';
import 'package:flutter_pokedex/presentation/theme/text_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: CustomTextTheme()),
      builder: (context, widget) {
        if (widget == null) {
          debugPrint('Routing error: widget is null');
          return Scaffold(
            body: Center(child: Text('Page not found or routing error')),
          );
        }
        return widget;
      },
    );
  }
}
