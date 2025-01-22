part of 'advice_bloc.dart';

@immutable
abstract class AdviceState extends Equatable {
  @override
  List<Object> get props => [];
}

class AdviceInitial extends AdviceState {}

class AdviceStateLoading extends AdviceState {}

class AdviceLoaded extends AdviceState {
  AdviceLoaded({required this.advice});
  final String advice;

  @override
  List<Object> get props => [advice];
}

class AdviceStateError extends AdviceState {
  AdviceStateError({required this.message});
  final String message;

  @override
  List<Object> get props => [message];
}
