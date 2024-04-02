// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_card_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameCardEntity {
  IconData get gameCardIcon => throw _privateConstructorUsedError;
  IconData get displayedIcon => throw _privateConstructorUsedError;
  Color get gameCardColor => throw _privateConstructorUsedError;
  bool get isFlipped => throw _privateConstructorUsedError;
  bool get isGuessed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameCardEntityCopyWith<GameCardEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameCardEntityCopyWith<$Res> {
  factory $GameCardEntityCopyWith(
          GameCardEntity value, $Res Function(GameCardEntity) then) =
      _$GameCardEntityCopyWithImpl<$Res, GameCardEntity>;
  @useResult
  $Res call(
      {IconData gameCardIcon,
      IconData displayedIcon,
      Color gameCardColor,
      bool isFlipped,
      bool isGuessed});
}

/// @nodoc
class _$GameCardEntityCopyWithImpl<$Res, $Val extends GameCardEntity>
    implements $GameCardEntityCopyWith<$Res> {
  _$GameCardEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameCardIcon = null,
    Object? displayedIcon = null,
    Object? gameCardColor = null,
    Object? isFlipped = null,
    Object? isGuessed = null,
  }) {
    return _then(_value.copyWith(
      gameCardIcon: null == gameCardIcon
          ? _value.gameCardIcon
          : gameCardIcon // ignore: cast_nullable_to_non_nullable
              as IconData,
      displayedIcon: null == displayedIcon
          ? _value.displayedIcon
          : displayedIcon // ignore: cast_nullable_to_non_nullable
              as IconData,
      gameCardColor: null == gameCardColor
          ? _value.gameCardColor
          : gameCardColor // ignore: cast_nullable_to_non_nullable
              as Color,
      isFlipped: null == isFlipped
          ? _value.isFlipped
          : isFlipped // ignore: cast_nullable_to_non_nullable
              as bool,
      isGuessed: null == isGuessed
          ? _value.isGuessed
          : isGuessed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameCardEntityImplCopyWith<$Res>
    implements $GameCardEntityCopyWith<$Res> {
  factory _$$GameCardEntityImplCopyWith(_$GameCardEntityImpl value,
          $Res Function(_$GameCardEntityImpl) then) =
      __$$GameCardEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {IconData gameCardIcon,
      IconData displayedIcon,
      Color gameCardColor,
      bool isFlipped,
      bool isGuessed});
}

/// @nodoc
class __$$GameCardEntityImplCopyWithImpl<$Res>
    extends _$GameCardEntityCopyWithImpl<$Res, _$GameCardEntityImpl>
    implements _$$GameCardEntityImplCopyWith<$Res> {
  __$$GameCardEntityImplCopyWithImpl(
      _$GameCardEntityImpl _value, $Res Function(_$GameCardEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameCardIcon = null,
    Object? displayedIcon = null,
    Object? gameCardColor = null,
    Object? isFlipped = null,
    Object? isGuessed = null,
  }) {
    return _then(_$GameCardEntityImpl(
      gameCardIcon: null == gameCardIcon
          ? _value.gameCardIcon
          : gameCardIcon // ignore: cast_nullable_to_non_nullable
              as IconData,
      displayedIcon: null == displayedIcon
          ? _value.displayedIcon
          : displayedIcon // ignore: cast_nullable_to_non_nullable
              as IconData,
      gameCardColor: null == gameCardColor
          ? _value.gameCardColor
          : gameCardColor // ignore: cast_nullable_to_non_nullable
              as Color,
      isFlipped: null == isFlipped
          ? _value.isFlipped
          : isFlipped // ignore: cast_nullable_to_non_nullable
              as bool,
      isGuessed: null == isGuessed
          ? _value.isGuessed
          : isGuessed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GameCardEntityImpl extends _GameCardEntity {
  const _$GameCardEntityImpl(
      {required this.gameCardIcon,
      required this.displayedIcon,
      required this.gameCardColor,
      required this.isFlipped,
      required this.isGuessed})
      : super._();

  @override
  final IconData gameCardIcon;
  @override
  final IconData displayedIcon;
  @override
  final Color gameCardColor;
  @override
  final bool isFlipped;
  @override
  final bool isGuessed;

  @override
  String toString() {
    return 'GameCardEntity(gameCardIcon: $gameCardIcon, displayedIcon: $displayedIcon, gameCardColor: $gameCardColor, isFlipped: $isFlipped, isGuessed: $isGuessed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameCardEntityImpl &&
            (identical(other.gameCardIcon, gameCardIcon) ||
                other.gameCardIcon == gameCardIcon) &&
            (identical(other.displayedIcon, displayedIcon) ||
                other.displayedIcon == displayedIcon) &&
            (identical(other.gameCardColor, gameCardColor) ||
                other.gameCardColor == gameCardColor) &&
            (identical(other.isFlipped, isFlipped) ||
                other.isFlipped == isFlipped) &&
            (identical(other.isGuessed, isGuessed) ||
                other.isGuessed == isGuessed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameCardIcon, displayedIcon,
      gameCardColor, isFlipped, isGuessed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameCardEntityImplCopyWith<_$GameCardEntityImpl> get copyWith =>
      __$$GameCardEntityImplCopyWithImpl<_$GameCardEntityImpl>(
          this, _$identity);
}

abstract class _GameCardEntity extends GameCardEntity {
  const factory _GameCardEntity(
      {required final IconData gameCardIcon,
      required final IconData displayedIcon,
      required final Color gameCardColor,
      required final bool isFlipped,
      required final bool isGuessed}) = _$GameCardEntityImpl;
  const _GameCardEntity._() : super._();

  @override
  IconData get gameCardIcon;
  @override
  IconData get displayedIcon;
  @override
  Color get gameCardColor;
  @override
  bool get isFlipped;
  @override
  bool get isGuessed;
  @override
  @JsonKey(ignore: true)
  _$$GameCardEntityImplCopyWith<_$GameCardEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
