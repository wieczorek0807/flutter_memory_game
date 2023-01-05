import 'package:animals/presentation/menu_screen/widgets/main_menu_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../game_screen/page/game_page.dart';

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF363d98),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
              Widget>[
            SizedBox(
              height: 300,
              width: MediaQuery.of(context).size.width / 2,
              // color: Colors.red,
              child: const Icon(Icons.psychology,
                  color: Color(0xfff16675), size: 350),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "FISZKI",
              style: GoogleFonts.staatliches(
                textStyle: const TextStyle(
                  color: Colors.white,
                ),
                fontSize: 140,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text("Aby rozpocząć grę wybierz wielkość planszy:",
                style: GoogleFonts.staatliches(
                    textStyle: TextStyle(color: Colors.white), fontSize: 25)),
            const SizedBox(
              height: 40,
            ),
            MainManuButton(
                buttonText: "2x3",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GamePage(x: 2, y: 3)));
                  ;
                }),
            const SizedBox(
              height: 10,
            ),
            MainManuButton(
                buttonText: "3x4",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GamePage(x: 3, y: 4)));
                }),
            const SizedBox(
              height: 10,
            ),
            MainManuButton(
                buttonText: "4x6",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GamePage(x: 4, y: 6)));
                })
          ]),
        ));
  }
}
