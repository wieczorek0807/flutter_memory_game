import 'package:flutter/material.dart';

class ScoreBoard extends StatelessWidget {
  final int score;
  final String title;
  const ScoreBoard({super.key, required this.score, required this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(color: Colors.white),
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 10.0),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Color(0xff292a29),
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              score.toString(),
              style: const TextStyle(
                color: Color(0xff292a29),
                fontSize: 35,
              ),
            )
          ],
        ),
      ),
    );
  }
}
