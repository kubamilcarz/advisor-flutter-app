part of 'advice_cubit.dart';

abstract class AdviceCubitState extends Equatable {
  const AdviceCubitState();

  @override
  List<Object?> get props => [];
}

class AdviceInitial extends AdviceCubitState {}

class AdviceStateLoading extends AdviceCubitState {}

class AdviceLoaded extends AdviceCubitState {
  const AdviceLoaded({required this.advice});
  final String advice;

  @override
  List<Object> get props => [advice];
}

class AdviceStateError extends AdviceCubitState {
  const AdviceStateError({required this.message});
  final String message;

  @override
  List<Object> get props => [message];
}
