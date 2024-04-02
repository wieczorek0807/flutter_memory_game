import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/game/presentation/cubit/game_cubit.dart';
import '../../features/score/presentation/cubit/score_cubit.dart';
import '../injection/injection_container.dart';

class GlobalProvider extends StatelessWidget {
  const GlobalProvider({super.key, required this.materialApp});

  final MaterialApp materialApp;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<GameCubit>(),
        ),
        BlocProvider(
          create: (_) => getIt<ScoreCubit>(),
        ),
      ],
      child: materialApp,
    );
  }
}
