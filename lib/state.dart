import 'package:equatable/equatable.dart';

class JankenState extends Equatable {
  const JankenState({required this.userHand, required this.computerHand, required this.result});
  final String userHand;
  final String computerHand;
  final String result;

  const JankenState.initial() : this(userHand: '', computerHand: '', result: '');

  JankenState copyWith({String? userHand, String? computerHand, String? result}) => JankenState(
      userHand: userHand ?? this.userHand,
      computerHand: computerHand ?? this.computerHand,
      result: result ?? this.result,
    );

  @override
  List<Object?> get props => [userHand, computerHand, result];
}

