import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

@immutable
abstract class GamesEvent extends Equatable {
  const GamesEvent();
}

class LoadGamesEvent extends GamesEvent {
  @override
  List<Object?> get props => [];
}
