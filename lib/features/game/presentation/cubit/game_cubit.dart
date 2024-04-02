import 'package:memory_game/core/presentation/values/values.dart';
import 'package:memory_game/features/game/values/game_card_icons.dart';
import 'package:memory_game/features/game_card/domain/entities/game_card_entity.dart';
import 'package:memory_game/features/score/presentation/cubit/score_cubit.dart';
import 'package:memory_game/core/injection/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_state.dart';
part 'game_cubit.freezed.dart';

class GameCubit extends Cubit<GameState> {
  GameCubit() : super(const GameState.initial());

  Future<void> startGame(int x, int y) async {
    List<GameCardEntity> gameCardList = _createGameCardList(x, y);
    emit(GameState.inProgress(x, y, gameCardList, false));
  }

  void clickOnCard(int cardIndex) {
    state.maybeWhen(
        inProgress: ((x, y, cards, animationInProgress) async {
          if (!animationInProgress) {
            //?czy emit pominien być w _funkcjach?
            List<GameCardEntity> listOfFlippedGameCardsEnttity = _flipCard(cards, cardIndex);
            emit(GameState.inProgress(x, y, listOfFlippedGameCardsEnttity, true));
            List<GameCardEntity> listOfCheckedGameCardsEnttity = await _checkIfGuessed(listOfFlippedGameCardsEnttity);
            emit(GameState.inProgress(x, y, listOfCheckedGameCardsEnttity, false));
            _isAllCardsGuessed(listOfCheckedGameCardsEnttity);
          }
        }),
        orElse: (() => {}));
  }

  Future<List<GameCardEntity>> _checkIfGuessed(List<GameCardEntity> listOfGameCardEntity) async {
    List<GameCardEntity> modifiedListOfGameCardEntity = List<GameCardEntity>.from(listOfGameCardEntity);
    int firstFlippedCardIndex = modifiedListOfGameCardEntity.indexWhere((element) => element.isFlipped && !element.isGuessed);
    int secondFlippedCardIndex = modifiedListOfGameCardEntity.lastIndexWhere((element) => element.isFlipped && !element.isGuessed);

    if (firstFlippedCardIndex != secondFlippedCardIndex && secondFlippedCardIndex != -1) {
      await Future.delayed(const Duration(milliseconds: 500));

      if (modifiedListOfGameCardEntity[firstFlippedCardIndex].displayedIcon ==
          modifiedListOfGameCardEntity[secondFlippedCardIndex].displayedIcon) {
        modifiedListOfGameCardEntity[firstFlippedCardIndex] = modifiedListOfGameCardEntity[firstFlippedCardIndex]
            .copyWith(isGuessed: true, gameCardColor: AppColors.flipCardGuessedBackground);
        modifiedListOfGameCardEntity[secondFlippedCardIndex] = modifiedListOfGameCardEntity[secondFlippedCardIndex]
            .copyWith(isGuessed: true, gameCardColor: AppColors.flipCardGuessedBackground);
        getIt<ScoreCubit>().addGuessed();
      } else {
        modifiedListOfGameCardEntity[firstFlippedCardIndex] = modifiedListOfGameCardEntity[firstFlippedCardIndex]
            .copyWith(isFlipped: false, gameCardColor: AppColors.flipCardBackground, displayedIcon: Icons.question_mark);
        modifiedListOfGameCardEntity[secondFlippedCardIndex] = modifiedListOfGameCardEntity[secondFlippedCardIndex]
            .copyWith(isFlipped: false, gameCardColor: AppColors.flipCardBackground, displayedIcon: Icons.question_mark);
        getIt<ScoreCubit>().addAttempt();
      }
    }

    return modifiedListOfGameCardEntity;
  }

  List<GameCardEntity> _createGameCardList(int x, int y) {
    // GameLogic gameLogic = GameLogic();
    final gameCardList = List.generate(x * y ~/ 2, (index) {
      final iconIndex = index % GameCardIcons.iconList.length;
      return [
        GameCardEntity(
          gameCardIcon: GameCardIcons.iconList[iconIndex],
          isFlipped: false,
          isGuessed: false,
          gameCardColor: AppColors.flipCardBackground,
          displayedIcon: Icons.question_mark,
        ),
        GameCardEntity(
          gameCardIcon: GameCardIcons.iconList[iconIndex],
          isFlipped: false,
          isGuessed: false,
          gameCardColor: AppColors.flipCardBackground,
          displayedIcon: Icons.question_mark,
        ),
      ];
    }).expand((cards) => cards).toList();

    gameCardList.shuffle();
    getIt<ScoreCubit>().resetScore();
    return gameCardList;
  }

  List<GameCardEntity> _flipCard(List<GameCardEntity> listOfGameCardEntity, int cardIndex) {
    List<GameCardEntity> modifiedListOfGameCardEntity = List<GameCardEntity>.from(listOfGameCardEntity);

    GameCardEntity card = modifiedListOfGameCardEntity[cardIndex];
    if (!card.isGuessed && !card.isFlipped) {
      modifiedListOfGameCardEntity[cardIndex] = card.copyWith(
        displayedIcon: card.gameCardIcon,
        isFlipped: true,
        gameCardColor: AppColors.flipCardFlippedBackground,
      );
    }
    return modifiedListOfGameCardEntity;
  }

  void _isAllCardsGuessed(List<GameCardEntity> listOfGameCardEntity) {
    final firstFlippedCardIndex = listOfGameCardEntity.indexWhere((element) => !element.isGuessed);

    if (firstFlippedCardIndex == -1) {
      emit(const GameState.end());
    }
  }
}
