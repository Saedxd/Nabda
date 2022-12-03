import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:testnew/Data/repository/irepository.dart';
import 'package:testnew/UI/HomePage/bloc/HomeScreen_Event.dart';
import 'package:testnew/UI/HomePage/bloc/HomeScreen_State.dart';



class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  IRepository _repository;

  HomeScreenBloc(this._repository) : super(HomeScreenState.initail());

  @override
  HomeScreenState get initialState => HomeScreenState.initail();

  @override
  Stream<HomeScreenState> mapEventToState(
    HomeScreenEvent event,
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
