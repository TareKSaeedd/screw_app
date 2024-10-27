import 'package:flutter/material.dart';
import 'package:screw_app/screens/home_screen.dart';
import 'package:screw_app/screens/score_board.dart';

class AppRoutes {
  static const String home = '/';
  static const String scoreboard = '/scoreboard';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      home: (context) => const HomeScreen(),
      scoreboard: (context) => const ScoreboardScreen(),
    };
  }
}
