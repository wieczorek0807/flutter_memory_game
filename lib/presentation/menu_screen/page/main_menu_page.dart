import 'package:animals/presentation/menu_screen/widgets/main_menu_button.dart';
import 'package:flutter/material.dart';

import '../../game_screen/page/game_page.dart';

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF363d98),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          const SizedBox(
            height: 240,
            child: FittedBox(child: Icon(Icons.psychology, color: Color(0xfff16675))),
          ),
          const SizedBox(
            height: 2,
          ),
          const Text("MEMORY", style: TextStyle(fontSize: 120, color: Colors.white)),
          const SizedBox(
            height: 10,
          ),
          const Text("Aby rozpocząć grę wybierz wielkość planszy:",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              )),
          const SizedBox(
            height: 40,
          ),
          MainManuButton(
              buttonText: "2x3",
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => GamePage(x: 2, y: 3)));
              }),
          const SizedBox(
            height: 10,
          ),
          MainManuButton(
              buttonText: "3x4",
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => GamePage(x: 3, y: 4)));
              }),
          const SizedBox(
            height: 10,
          ),
          MainManuButton(
              buttonText: "4x6",
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => GamePage(x: 4, y: 6)));
              })
        ]),
      ),
    );
  }
}
