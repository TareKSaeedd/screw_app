import 'package:flutter/material.dart';

class PlayersNames extends StatelessWidget {
  PlayersNames({super.key});
  final TextEditingController controller = TextEditingController();

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
