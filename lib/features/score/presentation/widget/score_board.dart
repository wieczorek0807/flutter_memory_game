import 'package:memory_game/core/presentation/styles/styles.dart';
import 'package:memory_game/core/presentation/values/values.dart';
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
        margin: AppMargin.scoreBoard,
        padding: AppPadding.scoreBoard,
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
