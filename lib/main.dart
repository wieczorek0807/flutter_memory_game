import 'package:memory_game/core/providers/global_provider.dart';
import 'package:flutter/services.dart';
import 'package:memory_game/core/injection/injection_container.dart' as injection_container;
import 'core/presentation/values/values.dart';
import 'features/menu/presentation/screen/menu_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() async {
  injection_container.setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return GlobalProvider(
        materialApp: MaterialApp(
      title: 'Memory',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(fontFamily: AppFonts.staatliches),
      initialRoute: '/',
      routes: {
        '/': (context) => const MenuScreen(),
      },
    ));
  }
}
