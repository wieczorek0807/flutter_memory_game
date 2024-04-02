import 'package:memory_game/features/score/presentation/cubit/score_cubit.dart';
import 'package:memory_game/features/score/presentation/widget/score_board.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ScoreBottomBar extends StatelessWidget {
  const ScoreBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScoreCubit, ScoreState>(builder: ((context, state) {
      return Row(
        children: [
          ScoreBoard(
            score: state.attempCount,
            title: AppLocalizations.of(context)!.attempts,
          ),
          ScoreBoard(
            score: state.score,
            title: AppLocalizations.of(context)!.score,
          ),
        ],
      );
    }));
  }
}
