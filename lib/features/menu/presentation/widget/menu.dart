import 'package:memory_game/core/presentation/styles/styles.dart';
import 'package:memory_game/features/game/presentation/cubit/game_cubit.dart';
import 'package:memory_game/features/game/presentation/screen/game_screen.dart';
import 'package:memory_game/core/presentation/widgets/app_button.dart';
import 'package:memory_game/core/injection/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../core/presentation/values/values.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(AppLocalizations.of(context)!.menuText, textAlign: TextAlign.center, style: TextStyles.menuText),
        const SizedBox(height: AppDimensions.menuTextButtonSpace),
        AppButton(
            buttonText: "2x3",
            onPressed: () {
              getIt<GameCubit>().startGame(2, 3);
              Navigator.push(context, MaterialPageRoute(builder: (context) => const GameScreen()));
            }),
        const SizedBox(
          height: AppDimensions.menuButtonSpace,
        ),
        AppButton(
            buttonText: "3x4",
            onPressed: () {
              getIt<GameCubit>().startGame(3, 4);
              Navigator.push(context, MaterialPageRoute(builder: (context) => const GameScreen()));
            }),
        const SizedBox(
          height: AppDimensions.menuButtonSpace,
        ),
        AppButton(
            buttonText: "4x6",
            onPressed: () {
              getIt<GameCubit>().startGame(4, 6);
              Navigator.push(context, MaterialPageRoute(builder: (context) => const GameScreen()));
            })
      ],
    );
  }
}
