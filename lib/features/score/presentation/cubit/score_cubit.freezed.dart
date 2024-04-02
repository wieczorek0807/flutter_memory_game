// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'score_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScoreState {
  int get attempCount => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScoreStateCopyWith<ScoreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreStateCopyWith<$Res> {
  factory $ScoreStateCopyWith(
          ScoreState value, $Res Function(ScoreState) then) =
      _$ScoreStateCopyWithImpl<$Res, ScoreState>;
  @useResult
  $Res call({int attempCount, int score});
}

/// @nodoc
class _$ScoreStateCopyWithImpl<$Res, $Val extends ScoreState>
    implements $ScoreStateCopyWith<$Res> {
  _$ScoreStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attempCount = null,
    Object? score = null,
  }) {
    return _then(_value.copyWith(
      attempCount: null == attempCount
          ? _value.attempCount
          : attempCount // ignore: cast_nullable_to_non_nullable
              as int,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScoreStateImplCopyWith<$Res>
    implements $ScoreStateCopyWith<$Res> {
  factory _$$ScoreStateImplCopyWith(
          _$ScoreStateImpl value, $Res Function(_$ScoreStateImpl) then) =
      __$$ScoreStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int attempCount, int score});
}

/// @nodoc
class __$$ScoreStateImplCopyWithImpl<$Res>
    extends _$ScoreStateCopyWithImpl<$Res, _$ScoreStateImpl>
    implements _$$ScoreStateImplCopyWith<$Res> {
  __$$ScoreStateImplCopyWithImpl(
      _$ScoreStateImpl _value, $Res Function(_$ScoreStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attempCount = null,
    Object? score = null,
  }) {
    return _then(_$ScoreStateImpl(
      null == attempCount
          ? _value.attempCount
          : attempCount // ignore: cast_nullable_to_non_nullable
              as int,
      null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ScoreStateImpl implements _ScoreState {
  const _$ScoreStateImpl(this.attempCount, this.score);

  @override
  final int attempCount;
  @override
  final int score;

  @override
  String toString() {
    return 'ScoreState(attempCount: $attempCount, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScoreStateImpl &&
            (identical(other.attempCount, attempCount) ||
                other.attempCount == attempCount) &&
            (identical(other.score, score) || other.score == score));
  }

  @override
  int get hashCode => Object.hash(runtimeType, attempCount, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScoreStateImplCopyWith<_$ScoreStateImpl> get copyWith =>
      __$$ScoreStateImplCopyWithImpl<_$ScoreStateImpl>(this, _$identity);
}

abstract class _ScoreState implements ScoreState {
  const factory _ScoreState(final int attempCount, final int score) =
      _$ScoreStateImpl;

  @override
  int get attempCount;
  @override
  int get score;
  @override
  @JsonKey(ignore: true)
  _$$ScoreStateImplCopyWith<_$ScoreStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
