import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'advice_event.dart';
part 'advice_state.dart';

class AdviceBloc extends Bloc<AdviceEvent, AdviceState> {
  AdviceBloc() : super(AdviceInitial()) {
    on<AdviceRequested>((event, emit) async {
      emit(AdviceStateLoading());
      await Future.delayed(const Duration(seconds: 2), () {});

      emit(AdviceLoaded(advice: 'Fake advice to test bloc.'));
    });
  }
}
