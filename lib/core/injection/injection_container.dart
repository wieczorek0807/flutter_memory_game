import 'package:memory_game/features/game/presentation/cubit/game_cubit.dart';
import 'package:memory_game/features/score/presentation/cubit/score_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<GameCubit>(GameCubit());
  getIt.registerSingleton<ScoreCubit>(ScoreCubit());
}
