import 'package:flutter_b_janken/logic.dart';
import 'package:flutter_b_janken/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class JankenEvent {}

class PaButtonPressed extends JankenEvent {}

class GuButtonPressed extends JankenEvent {}

class ChokiButtonPressed extends JankenEvent {}

class JankenBloc extends Bloc<JankenEvent, JankenState> {
  final game = Game();

  JankenBloc() : super(const JankenState.initial()) {
    on<GuButtonPressed>((event, emit) {
      emit(state.copyWith(
        userHand: 'Gu',
        computerHand: game.makeComputerHand(),
      ));
      emit(state.copyWith(
          result: game.judgeResult(state.userHand, state.computerHand)));
    });
    on<ChokiButtonPressed>((event, emit) {
      emit(state.copyWith(
        userHand: 'Choki',
        computerHand: game.makeComputerHand(),
      ));
      emit(state.copyWith(
          result: game.judgeResult(state.userHand, state.computerHand)));
    });
    on<PaButtonPressed>((event, emit) {
      emit(state.copyWith(
        userHand: 'Pa',
        computerHand: game.makeComputerHand(),
      ));
      emit(state.copyWith(
          result: game.judgeResult(state.userHand, state.computerHand)));
    });
  }
}
