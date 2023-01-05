import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScoreBoard extends StatelessWidget {
  final int score;
  final String title;
  const ScoreBoard({super.key, required this.score, required this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(color: Colors.white),
        margin: EdgeInsets.all(25),
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 40.0),
        child: Column(
          children: [
            Text(
              title,
              style: GoogleFonts.bebasNeue(
                textStyle: const TextStyle(
                  color: Color(0xff292a29),
                ),
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              score.toString(),
              style: GoogleFonts.bebasNeue(
                textStyle: const TextStyle(
                  color: Color(0xff292a29),
                ),
                fontSize: 35,
              ),
            )
          ],
        ),
      ),
    );
  }
}
