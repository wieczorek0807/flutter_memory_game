import 'package:animals/core/logic/game_logic.dart';
import 'package:flutter/material.dart';

import '../widget/score_board.dart';

// ignore: must_be_immutable
class GamePage extends StatefulWidget {
  late GameLogic game;
  final int x;
  final int y;
  bool operation = false;

  GamePage({super.key, required this.x, required this.y}) {
    game = GameLogic(x * y);
    game.gameLogicInit();
  }

  @override
  State<GamePage> createState() {
    return _GamePageState();
  }
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF363d98),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(
            maxWidth: 500.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.80,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10.0,
                  ),
                  child: Center(
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: widget.x,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                        itemCount: widget.x * widget.y,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () async {
                              if (!widget.game.gameCardList[index].isFlipped && !widget.operation) {
                                if (widget.game.secondCardId != 2137) {
                                  widget.operation = true;
                                }
                                if (!widget.operation) {
                                  widget.game.flipCard(index);
                                  setState(() {});

                                  await Future.delayed(const Duration(seconds: 1));
                                  widget.game.compareCards();
                                  setState(() {});
                                  widget.operation = false;
                                }
                              }
                              if (widget.game.score == widget.x * widget.y / 2) {
                                // ignore: use_build_context_synchronously
                                showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) => AlertDialog(
                                            title: const Text(
                                              'Wygrana',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(fontSize: 30),
                                            ),
                                            content: Text("Gratulacje wygrałeś grę wykonując ${widget.game.moves.toString()} ruchów."),
                                            actions: <Widget>[
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.popUntil(context, ModalRoute.withName('/'));
                                                },
                                                child: const Text(
                                                  'Wróć do menu',
                                                  style: TextStyle(color: Color(0xFF363d98), fontSize: 20),
                                                  textAlign: TextAlign.center,
                                                ),
                                              )
                                            ]));
                              }
                            },
                            child: Container(
                                padding: const EdgeInsets.all(8),
                                color: widget.game.gameCardList[index].getColor(),
                                child: FittedBox(
                                    child: Icon(
                                  widget.game.gameCardList[index].getIconData(),
                                ))),
                          );
                        }),
                  ),
                ),
              ),
              Row(
                children: [
                  ScoreBoard(
                    score: widget.game.moves,
                    title: "Próby",
                  ),
                  ScoreBoard(
                    score: widget.game.score,
                    title: "Wynik",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
