part of 'game_cubit.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class GameState with _$GameState {
  const factory GameState.initial() = _Initial;
  const factory GameState.inProgress(int x, int y, List<GameCardEntity> cards, bool animationInProgress) = _InProgress;
  const factory GameState.end() = _End;
}
