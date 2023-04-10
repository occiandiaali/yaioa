import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import './../domain/games_model.dart';

@immutable
abstract class GamesState extends Equatable {}

class GamesLoadingState extends GamesState {
  @override
  List<Object?> get props => [];
}

class GamesLoadedState extends GamesState {
  final List<GamesModel> games;
  GamesLoadedState(this.games);
  @override
  List<Object?> get props => [games];
}

class GamesErrorState extends GamesState {
  final String error;
  GamesErrorState(this.error);
  @override
  List<Object?> get props => [error];
}


