import 'package:memory_game/features/game/presentation/cubit/game_cubit.dart';
import 'package:memory_game/features/game/presentation/screen/game_in_progress_screen.dart';
import 'package:memory_game/features/score/presentation/screen/score_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameCubit, GameState>(builder: ((context, state) {
      return state.maybeWhen(
          inProgress: (x, y, cards, animationInProgress) => GameInProgressScreen(
                x: x,
                y: y,
                listOfCards: cards,
              ),
          end: () => const ScoreScreeen(),
          orElse: () => const SizedBox.shrink());
    }));
  }
}
