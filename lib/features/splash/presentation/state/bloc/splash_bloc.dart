import 'package:bloc/bloc.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../../../domain/use_case/get_use_case.dart';

part 'splash_event.dart';

part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
final SplashUseCae useCae;
SplashBloc(this.useCae) : super(const SplashState()) {
on<SplashEvent>((event, emit) {

}) ;
}
}
