import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GameCard extends Equatable {
  final IconData gameCardIcon;
  bool isFlipped;
  bool isGuessed;

  GameCard({required this.gameCardIcon, required this.isFlipped, required this.isGuessed});

  void turnAround() {
    if (isGuessed == false) {
      if (isFlipped == false) {
        isFlipped = true;
      } else {
        isFlipped = false;
      }
    }
  }

  void changeToGuessed() {
    if (isGuessed == false) {
      isGuessed = true;
    }
  }

  Color getColor() {
    if (isGuessed) {
      return const Color(0xFFA7F167);
    } else if (isFlipped) {
      return const Color(0xfffee36e);
    }
    return const Color(0xffceb92c);
  }

  IconData getIconData() {
    if (isFlipped) {
      return gameCardIcon;
    }
    return Icons.question_mark;
  }

  @override
  List<Object?> get props => [gameCardIcon, isFlipped];
}
