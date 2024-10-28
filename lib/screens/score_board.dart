import 'package:flutter/material.dart';

class ScoreboardScreen extends StatelessWidget {
  const ScoreboardScreen({super.key, this.numberOfPlayers});
  final int? numberOfPlayers;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 62, 1, 65),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 151, 0, 156),
        title: const Center(
            child: Text(
          'Scoreboard Screen',
        )),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            child: const Text(
              'Swipe to choose number of players',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              padding: const EdgeInsets.all(19),
              decoration: BoxDecoration(border: Border.all(color: Colors.red, width: 2)),
              child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Table(
                    children: [
                      TableRow(
                          children: List.generate(
                        numberOfPlayers!,
                        (index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 24,
                              child: Text(
                                "Player ${index + 1}",
                                style: const TextStyle(color: Colors.white, fontSize: 13),
                              ),
                            ),
                          );
                        },
                      ))
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }
}
