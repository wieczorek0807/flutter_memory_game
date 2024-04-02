import 'package:memory_game/core/presentation/values/values.dart';
import 'package:memory_game/core/presentation/widgets/app_button.dart';
import 'package:memory_game/features/score/presentation/cubit/score_cubit.dart';
import 'package:memory_game/features/score/presentation/widget/score_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ScoreScreeen extends StatelessWidget {
  const ScoreScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: BlocBuilder<ScoreCubit, ScoreState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(flex: 4, child: SizedBox.shrink()),
                ScoreMessage(attempCount: state.attempCount, score: state.score),
                const SizedBox(
                  height: AppDimensions.scoreTextSpace,
                ),
                const Expanded(flex: 3, child: SizedBox.shrink()),
                AppButton(
                    onPressed: () => Navigator.popUntil(context, ModalRoute.withName('/')),
                    buttonText: AppLocalizations.of(context)!.backToMenu),
                const Expanded(flex: 1, child: SizedBox.shrink()),
              ],
            );
          },
        ),
      ),
    );
  }
}
