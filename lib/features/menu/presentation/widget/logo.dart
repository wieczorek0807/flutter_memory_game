import 'package:memory_game/core/presentation/styles/styles.dart';
import 'package:memory_game/core/presentation/values/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: AppDimensions.menuLogoSize,
          child: FittedBox(child: Icon(Icons.psychology, color: AppColors.logoIcon)),
        ),
        const SizedBox(
          height: AppDimensions.menuLogoSpace,
        ),
        Text(AppLocalizations.of(context)!.appTitle, style: TextStyles.menuLogo),
      ],
    );
  }
}
