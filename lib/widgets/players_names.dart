import 'package:flutter/material.dart';

class PlayersNames extends StatelessWidget {
  const PlayersNames({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.deepOrange,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: const TextField(
        textAlign: TextAlign.center,
      ),
    );
  }
}
