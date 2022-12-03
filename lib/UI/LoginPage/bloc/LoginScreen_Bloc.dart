import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:testnew/Data/repository/irepository.dart';
import 'package:testnew/UI/LoginPage/bloc/LoginScreen_Event.dart';
import 'package:testnew/UI/LoginPage/bloc/LoginScreen_State.dart';


class LoginScreenBloc extends Bloc<LoginScreenEvent, LoginScreenState> {
  IRepository _repository;

  LoginScreenBloc(this._repository) : super(LoginScreenState.initail());

  @override
  LoginScreenState get initialState => LoginScreenState.initail();

  @override
  Stream<LoginScreenState> mapEventToState(
    LoginScreenEvent event,
  ) async* {
    if (event is Login) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false
          ..UserData = null);
        final date = await _repository.Login(
            event.Email!, event.Password!, event.FcmToken!);
        print('get Success data $date');
        yield state.rebuild((b) => b
          ..error = ""
          ..success = true
          ..isLoading = false
          ..UserData.replace(date));
      } catch (e) {
        yield state.rebuild((b) => b
          ..error = "$e"
          ..success = false
          ..isLoading = false
          ..UserData = null
        );
      }
    }
  }
}
