import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class CardEntity extends Equatable {
  final int id;
  final String text;
  final Icon icon;
  final bool isVisable;
  final bool isMached;

  const CardEntity(
      this.id, this.text, this.icon, this.isVisable, this.isMached);

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
