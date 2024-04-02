import 'package:memory_game/core/presentation/values/values.dart';
import 'package:memory_game/features/game/presentation/cubit/game_cubit.dart';
import 'package:memory_game/features/game_card/domain/entities/game_card_entity.dart';
import 'package:memory_game/features/score/presentation/widget/score_bottom_bar.dart';
import 'package:memory_game/core/injection/injection_container.dart';
import 'package:flutter/material.dart';

class GameInProgressScreen extends StatelessWidget {
  const GameInProgressScreen({super.key, required this.x, required this.y, required this.listOfCards});
  final int x;
  final int y;
  final List<GameCardEntity> listOfCards;

  @override
  Widget build(BuildContext context) {
    final gameBoardHeight = MediaQuery.of(context).size.height * 0.80;
    final itemCount = x * y;
    const gameBoardMaxWidth = 500.0;
    final gridDelegate = SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: x,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
    );

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Container(
          constraints: const BoxConstraints(
            maxWidth: gameBoardMaxWidth,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: gameBoardHeight,
                child: Padding(
                  padding: AppPadding.gameBoard,
                  child: Center(
                    child: GridView.builder(
                        gridDelegate: gridDelegate,
                        itemCount: itemCount,
                        itemBuilder: (context, cardIndex) {
                          return GestureDetector(
                            onTap: () => getIt<GameCubit>().clickOnCard(cardIndex),
                            child: Container(
                                padding: AppPadding.gameCard,
                                color: listOfCards[cardIndex].gameCardColor,
                                child: FittedBox(child: Icon(listOfCards[cardIndex].displayedIcon))),
                          );
                        }),
                  ),
                ),
              ),
              const ScoreBottomBar()
            ],
          ),
        ),
      ),
    );
  }
}
