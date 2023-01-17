import 'package:flutter/services.dart';

import 'presentation/menu_screen/page/main_menu_page.dart';
import 'package:flutter/material.dart';

void main() {
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
    return MaterialApp(
      title: 'Memory',
      // home: const MainMenuPage(),
      theme: ThemeData(fontFamily: 'Staatliches'),
      initialRoute: '/',
      routes: {
        '/': (context) => const MainMenuPage(),
      },
    );
  }
}
