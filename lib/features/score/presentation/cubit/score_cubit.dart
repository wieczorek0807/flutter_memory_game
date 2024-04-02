import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'score_state.dart';
part 'score_cubit.freezed.dart';

class ScoreCubit extends Cubit<ScoreState> {
  ScoreCubit() : super(const ScoreState(0, 0));

  void addAttempt() {
    emit(state.copyWith(attempCount: state.attempCount + 1, score: state.score - 1));
  }

  void addGuessed() {
    emit(state.copyWith(attempCount: state.attempCount + 1, score: state.score + 10));
  }

  void resetScore() {
    emit(state.copyWith(attempCount: 0, score: 0));
  }
}
