import 'package:flutter/material.dart';
import 'package:recipe_app/core/di/di_setup.dart';
import 'core/routing/routes.dart';

void main() {
  diSetup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}