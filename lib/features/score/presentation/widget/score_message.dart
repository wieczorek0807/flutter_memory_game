import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../core/presentation/styles/styles.dart';

class ScoreMessage extends StatelessWidget {
  const ScoreMessage({super.key, required this.attempCount, required this.score});
  final int attempCount;
  final int score;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppLocalizations.of(context)!.congratulations,
          style: TextStyles.scoreHeaderScreen,
        ),
        Text(
          AppLocalizations.of(context)!.scoreMessage(attempCount.toString(), score.toString()),
          style: TextStyles.scoreTextScreen,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
