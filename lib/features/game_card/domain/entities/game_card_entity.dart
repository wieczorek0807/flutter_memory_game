import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_card_entity.freezed.dart';

@freezed
class GameCardEntity with _$GameCardEntity {
  const GameCardEntity._();

  const factory GameCardEntity({
    required IconData gameCardIcon,
    required IconData displayedIcon,
    required Color gameCardColor,
    required bool isFlipped,
    required bool isGuessed,
  }) = _GameCardEntity;
}
