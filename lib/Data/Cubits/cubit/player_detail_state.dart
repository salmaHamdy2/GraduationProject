part of 'player_detail_cubit.dart';

@immutable
abstract class PlayerDetailState {}

class PlayerDetailLoading extends PlayerDetailState {}


class PlayerDetailSucsess extends PlayerDetailState {
  final Players ourResponse;
  PlayerDetailSucsess({required this.ourResponse});
}

class PlayerDetailError extends PlayerDetailState {}
