import 'package:animals/core/styles/styles.dart';
import 'package:animals/core/values/values.dart';
import 'package:flutter/material.dart';

class ScoreBoard extends StatelessWidget {
  final int score;
  final String title;
  const ScoreBoard({super.key, required this.score, required this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(color: AppColors.primaryLight),
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 10.0),
        child: Column(
          children: [
            Text(title, style: TextStyles.scoreBoardTitle),
            const SizedBox(
              height: AppDimensions.scoreBoardSpace,
            ),
            Text(score.toString(), style: TextStyles.scoreBoardValue)
          ],
        ),
      ),
    );
  }
}
