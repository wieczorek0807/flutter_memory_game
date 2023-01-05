import 'package:flutter/material.dart';

import '../widgets/score_board.dart';

class GamePage extends StatelessWidget {
  final int x;
  final int y;
  const GamePage({super.key, required this.x, required this.y});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF363d98),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: x,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: x * y,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.all(8),
                        color: Color(0xfffee36e),
                        child: Text(index.toString()),
                      );
                    }),
              ),
            ),
            Row(
              children: [
                ScoreBoard(
                  score: 12,
                  title: "Próby",
                ),
                ScoreBoard(
                  score: 12,
                  title: "Wynik",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
