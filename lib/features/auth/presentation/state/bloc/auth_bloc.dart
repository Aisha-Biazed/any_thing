import 'package:bloc/bloc.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../../../domain/use_case/get_use_case.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
final AuthUseCae useCae;
AuthBloc(this.useCae) : super(const AuthState()) {
on<AuthEvent>((event, emit) {

}) ;
}
}
