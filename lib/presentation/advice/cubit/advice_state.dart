part of 'advice_bloc.dart';

@immutable
abstract class AdviceState {}

class AdviceInitial extends AdviceState {}

class AdviceStateLoading extends AdviceState {}

class AdviceLoaded extends AdviceState {
  AdviceLoaded({required this.advice});
  final String advice;
}

class AdviceStateError extends AdviceState {
  AdviceStateError({required this.message});
  final String message;
}
