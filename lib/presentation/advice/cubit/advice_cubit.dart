import 'package:advisor/domain/usecase/advice_usecases.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'advice_state.dart';

class AdviceCubit extends Cubit<AdviceCubitState> {
  AdviceCubit() : super(AdviceInitial());

  final AdviceUseCases _adviceUseCases = AdviceUseCases();

  Future<void> adviceRequested() async {
    emit(AdviceStateLoading());
    final advice = await _adviceUseCases.getAdvice();

    emit(AdviceLoaded(advice: advice.advice));
  }
}
