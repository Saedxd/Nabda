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
    if (event is GetPosts) {
      try {
        yield state.rebuild((b) => b
          ..GetPostsisLoading = true
          ..GetPostserror = ""
          ..GetpostsSuccess = false
          ..posts = null
        );

        final date = await _repository.GetPosts();

        print('get Success data $date');
        yield state.rebuild((b) => b
          ..GetPostserror = ""
          ..GetpostsSuccess = true
          ..GetPostsisLoading = false
          ..posts.replace(date)
        );
        print("NO EXCEPTIONS");
      } catch (e) {
        print("EXCEPTION $e");
        yield state.rebuild((b) => b
          ..GetPostserror = "$e"
          ..GetpostsSuccess = false
          ..GetPostsisLoading = false
          ..posts = null
        );
      }
    }
    if (event is GetAdmins) {
      try {
        yield state.rebuild((b) => b
          ..GetAdminsisLoading = true
          ..GetAdminserror = ""
          ..GetAdminsSuccess = false
          ..Admins = null
        );

        final date = await _repository.GetAdmins();

        print('get Success data $date');
        yield state.rebuild((b) => b
          ..GetAdminserror = ""
          ..GetAdminsSuccess = true
          ..GetAdminsisLoading = false
          ..Admins.replace(date)
        );
      } catch (e) {
        yield state.rebuild((b) => b
          ..GetAdminserror = "$e"
          ..GetAdminsSuccess = false
          ..GetAdminsisLoading = false
          ..Admins = null
        );
      }
    }
    if (event is GetUrls) {
      try {
        yield state.rebuild((b) => b
          ..GetUrlsisLoading = true
          ..GetUrlsserror = ""
          ..GetUrlsSuccess = false
          ..Urls = null
        );

        final date = await _repository.GetUrls();

        print('get Success data $date');
        yield state.rebuild((b) => b
          ..GetUrlsserror = ""
          ..GetUrlsSuccess = true
          ..GetUrlsisLoading = false
          ..Urls.replace(date)
        );
      } catch (e) {
        yield state.rebuild((b) => b
          ..GetUrlsserror = "$e"
          ..GetUrlsSuccess = false
          ..GetUrlsisLoading = false
          ..Urls = null
        );
      }
    }
    if (event is SendMessage) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false
          ..SendMessage = null
        );

        final date = await _repository.SendMessage(event.name!, event.Email!, event.title!, event.body!);

        print('get Success data $date');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success = true
          ..SendMessage.replace(date)
        );
      } catch (e) {
        yield state.rebuild((b) => b
          ..error = "$e"
          ..success = false
          ..isLoading = false
          ..SendMessage = null
        );
      }
    }
    if (event is ChangeState) {
      try {
        yield state.rebuild((b) => b
          ..success = false
        );
      } catch (e) {
      }
    }
  }
}
