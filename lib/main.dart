import 'package:flutter/material.dart';
import 'package:screw_app/routes/routes.dart';

void main() {
  runApp(const ScrewApp());
}

class ScrewApp extends StatelessWidget {
  const ScrewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigation Example',
      initialRoute: AppRoutes.scoreboard,
      routes: AppRoutes.getRoutes(),
    );
  }
}
