import 'package:flutter/material.dart';

class PlayersTxtButton extends StatelessWidget {
  const PlayersTxtButton({super.key, required this.numberOfPlayers, required this.onPlayerChange});
  final int numberOfPlayers;
  final Function(int) onPlayerChange;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal, // Enable horizontal scrolling
      child: Row(
        children: [
          TextButton(
            onPressed: () {
              onPlayerChange(2);
            },
            child: const Text('2 Players', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {
              onPlayerChange(3);
            },
            child: const Text('3 Players', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {
              onPlayerChange(4);
            },
            child: const Text('4 Players', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {
              onPlayerChange(5);
            },
            child: const Text('5 Players', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {
              onPlayerChange(6);
            },
            child: const Text('6 Players', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {
              onPlayerChange(7);
            },
            child: const Text('7 Players', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {
              onPlayerChange(8);
            },
            child: const Text('8 Players', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
