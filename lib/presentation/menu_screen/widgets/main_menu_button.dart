import 'package:animals/core/app_fonts.dart';
import 'package:flutter/cupertino.dart';

class MainManuButton extends StatelessWidget {
  final String buttonText;
  final Function onPressed;

  const MainManuButton({super.key, required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      color: const Color(0xfffbe56d),
      child: Text(
        buttonText,
        style: const TextStyle(color: Color(0xff292a29), fontSize: 25, fontFamily: AppFonts.staatliches),
      ),
      onPressed: () {
        onPressed();
      },
    );
  }
}
