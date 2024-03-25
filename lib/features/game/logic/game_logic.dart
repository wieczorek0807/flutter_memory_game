import 'package:animals/features/game/logic/game_card.dart';
import 'package:flutter/material.dart';

class GameLogic {
  int score = 0;
  int moves = 0;
  final int cardCount;
  final List<IconData> iconList = [
    Icons.car_crash,
    Icons.car_crash,
    Icons.apple,
    Icons.apple,
    Icons.android,
    Icons.android,
    Icons.accessibility,
    Icons.accessibility,
    Icons.umbrella,
    Icons.umbrella,
    Icons.add_box,
    Icons.add_box,
    Icons.airplay,
    Icons.airplay,
    Icons.podcasts,
    Icons.podcasts,
    Icons.featured_video,
    Icons.featured_video,
    Icons.elderly_woman,
    Icons.elderly_woman,
    Icons.radio,
    Icons.radio,
    Icons.eco_rounded,
    Icons.eco_rounded,
  ];
  late final List<GameCard> gameCardList;

  int firstCardId = 2137;
  int secondCardId = 2137;

  GameLogic(this.cardCount);

  void gameLogicInit() {
    gameCardList = List.generate(cardCount, (index) {
      return GameCard(gameCardIcon: iconList[index], isFlipped: false, isGuessed: false);
    });
    gameCardList.shuffle();
  }

  void flipCard(int index) {
    if (firstCardId == 2137) {
      firstCardId = index;
    } else if (secondCardId == 2137) {
      secondCardId = index;
    }
    gameCardList[index].turnAround();
    moves += 1;
  }

  void compareCards() {
    if (firstCardId != 2137 && secondCardId != 2137) {
      if (gameCardList[firstCardId] == gameCardList[secondCardId]) {
        gameCardList[firstCardId].changeToGuessed();
        gameCardList[secondCardId].changeToGuessed();
        score += 1;
      } else {
        gameCardList[firstCardId].turnAround();
        gameCardList[secondCardId].turnAround();
      }
      firstCardId = 2137;
      secondCardId = 2137;
    }
  }
}
