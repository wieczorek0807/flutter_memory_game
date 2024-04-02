import 'package:memory_game/core/presentation/styles/styles.dart';
import 'package:memory_game/core/presentation/values/values.dart';
import 'package:flutter/cupertino.dart';

class AppButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const AppButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      color: AppColors.menuButtonBackground,
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: TextStyles.menuButton,
      ),
    );
  }
}
