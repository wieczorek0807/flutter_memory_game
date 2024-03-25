import 'package:animals/core/styles/styles.dart';
import 'package:animals/core/values/values.dart';
import 'package:flutter/cupertino.dart';

class MenuButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const MenuButton({
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
