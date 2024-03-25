import 'package:animals/core/styles/styles.dart';
import 'package:animals/features/menu/presentation/widget/menu_button.dart';
import 'package:flutter/material.dart';

import '../../../../core/values/values.dart';
import '../../../game/presentation/screen/game_screen.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Aby rozpocząć grę wybierz wielkość planszy:", textAlign: TextAlign.center, style: TextStyles.menuText),
        const SizedBox(
          height: 40,
        ),
        MenuButton(
            buttonText: "2x3",
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => GamePage(x: 2, y: 3)));
            }),
        const SizedBox(
          height: AppDimensions.menuButtonSpace,
        ),
        MenuButton(
            buttonText: "3x4",
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => GamePage(x: 3, y: 4)));
            }),
        const SizedBox(
          height: AppDimensions.menuButtonSpace,
        ),
        MenuButton(
            buttonText: "4x6",
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => GamePage(x: 4, y: 6)));
            })
      ],
    );
  }
}
