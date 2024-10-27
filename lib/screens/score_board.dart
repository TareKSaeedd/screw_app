import 'package:flutter/material.dart';

class ScoreboardScreen extends StatelessWidget {
  const ScoreboardScreen({super.key});
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
            child: Container(
              padding: const EdgeInsets.all(19),
              decoration: BoxDecoration(border: Border.all(color: Colors.red, width: 2)),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: DataTable(columnSpacing: 30, headingRowHeight: 60, columns: const <DataColumn>[
                  DataColumn(
                    label: Text("Player 1"),
                  ),
                  DataColumn(
                    label: Text("Player 2"),
                  )
                ], rows: const <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(
                        Text("50"),
                      ),
                      DataCell(
                        Text("25"),
                      )
                    ],
                  )
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
