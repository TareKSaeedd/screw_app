import 'package:flutter/material.dart';
import 'package:screw_app/screens/score_board.dart';
import 'package:screw_app/widgets/players_names.dart';
import 'package:screw_app/widgets/players_txt_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int numberOfPlayers = 0;

  void updatedNumberOfPlayers(int newNumber) {
    setState(() {
      numberOfPlayers = newNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 62, 1, 65),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 151, 0, 156),
        title: const Center(
          child: Text('Screw Calculation'),
        ),
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
          Container(
            width: 300, // Adjust the width of the container
            height: 50, // Adjust the height of the container
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              width: 300, // Adjust the width of the container
              height: 50, // Adjust the height of the container
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 0, 221),
                borderRadius: BorderRadius.circular(10),
              ),
              child: PlayersTxtButton(
                numberOfPlayers: numberOfPlayers,
                onPlayerChange: updatedNumberOfPlayers,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Pleas enter names',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          const SizedBox(
            height: 30,
          ),
          SingleChildScrollView(
            child: Column(
              children: List.generate(
                numberOfPlayers,
                (index) {
                  return const PlayersNames();
                },
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ScoreboardScreen()));
            },
            child: const Text('Go to the scoreboard screen'),
          )
        ],
      ),
    );
  }
}
