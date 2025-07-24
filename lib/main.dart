import 'package:flutter/material.dart';
import 'package:flutter_pokedex/presentation/router/router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
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
