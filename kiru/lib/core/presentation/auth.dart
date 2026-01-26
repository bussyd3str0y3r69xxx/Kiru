import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiru/core/data/auth_repository.dart';


abstract class AuthState {
  
} 

class AuthInitialState extends AuthState {}

class  AuthUnauthenticatedState extends AuthState {
  
}

class  AuthAuthenticatedState extends AuthState {
  
}

class AuthError extends AuthState{
  
}

abstract class AuthEvent{

}

class AuthMeEvent extends AuthEvent{}

class AuthBloc extends Bloc<AuthEvent, AuthState>{
  final AuthRepository authRepository;
  AuthBloc(this.authRepository) : super(AuthInitialState()){
    on<AuthMeEvent>(_onAuthMeEvent);
  }

  FutureOr<void> _onAuthMeEvent(AuthMeEvent event, Emitter<AuthState> emit)async {
    print('auth me event');
    final response = await authRepository.authMe();
    if (response == false){
      emit (AuthUnauthenticatedState());
    }
    else if (response == true){
      emit(AuthAuthenticatedState());
    }
    print('response $response');
  }
}