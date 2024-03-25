part of 'game_cubit.dart';

@freezed
class GameState with _$GameState {
  const factory GameState.initial(int x, int y) = _Initial;
  const factory GameState.inProgress(List<String> cards) = _InProgress;
  const factory GameState.error(String message) = _Error;
  const factory GameState.end() = _End;
}
