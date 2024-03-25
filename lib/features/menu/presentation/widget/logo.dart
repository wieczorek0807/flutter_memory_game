import 'package:animals/core/styles/styles.dart';
import 'package:animals/core/values/values.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: AppDimensions.menuLogoSize,
          child: FittedBox(child: Icon(Icons.psychology, color: AppColors.logoIcon)),
        ),
        SizedBox(
          height: AppDimensions.menuLogoSpace,
        ),
        Text("MEMORY", style: TextStyles.menuLogo),
      ],
    );
  }
}
