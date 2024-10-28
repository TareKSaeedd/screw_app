import 'package:flutter/material.dart';

class PlayersNames extends StatelessWidget {
  const PlayersNames({super.key, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.deepOrange,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        style: const TextStyle(color: Colors.white),
        textAlign: TextAlign.center,
        controller: controller,
      ),
    );
  }
}
