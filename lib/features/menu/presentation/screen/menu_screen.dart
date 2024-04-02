import 'package:memory_game/core/presentation/values/values.dart';
import 'package:memory_game/features/menu/presentation/widget/logo.dart';
import 'package:memory_game/features/menu/presentation/widget/menu.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Logo(),
            SizedBox(
              height: AppDimensions.menuItemSpaceHeight,
              width: AppDimensions.menuItemSpaceWidth,
            ),
            Menu(),
          ]),
        ),
      ),
    );
  }
}
