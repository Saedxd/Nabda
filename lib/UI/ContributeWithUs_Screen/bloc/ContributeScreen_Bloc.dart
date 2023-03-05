import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:testnew/Data/repository/irepository.dart';
import 'package:testnew/UI/ContributeWithUs_Screen/bloc/ContributeScreen_Event.dart';
import 'package:testnew/UI/ContributeWithUs_Screen/bloc/ContributeScreen_State.dart';



class ContributeScreenBloc extends Bloc<ContributeScreenEvent, ContributeScreenState> {
  IRepository _repository;

  ContributeScreenBloc(this._repository) : super(ContributeScreenState.initail());

  @override
  ContributeScreenState get initialState => ContributeScreenState.initail();

  @override
  Stream<ContributeScreenState> mapEventToState(
      ContributeScreenEvent event,
  ) async* {
    if (event is SendVol) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false
          ..AddVol = null
        );

        final date = await _repository.AddVol(event.gender!, event.uni_sp!, event.area!, event.street!, event.phone!, event.email!,
            event.note!, event.full_name!, event.old!, event.noid!);

        print('get Success data $date');
        yield state.rebuild((b) => b
          ..error = ""
          ..success = true
          ..isLoading = false
          ..AddVol.replace(date)
        );
        print("NO EXCEPTIONS");
      } catch (e) {
        print("EXCEPTION $e");
        yield state.rebuild((b) => b
          ..error = "$e"
          ..success = false
          ..isLoading = false
          ..AddVol = null
        );
      }
    }
///
    // if (event is GetAdmins) {
    //   try {
    //     yield state.rebuild((b) => b
    //       ..GetAdminsisLoading = true
    //       ..GetAdminserror = ""
    //       ..GetAdminsSuccess = false
    //       ..Admins = null
    //     );
    //
    //     final date = await _repository.GetAdmins();
    //
    //     print('get Success data $date');
    //     yield state.rebuild((b) => b
    //       ..GetAdminserror = ""
    //       ..GetAdminsSuccess = true
    //       ..GetAdminsisLoading = false
    //       ..Admins.replace(date)
    //     );
    //   } catch (e) {
    //     yield state.rebuild((b) => b
    //       ..GetAdminserror = "$e"
    //       ..GetAdminsSuccess = false
    //       ..GetAdminsisLoading = false
    //       ..Admins = null
    //     );
    //   }
    // }
    // if (event is GetUrls) {
    //   try {
    //     yield state.rebuild((b) => b
    //       ..GetUrlsisLoading = true
    //       ..GetUrlsserror = ""
    //       ..GetUrlsSuccess = false
    //       ..Urls = null
    //     );
    //
    //     final date = await _repository.GetUrls();
    //
    //     print('get Success data $date');
    //     yield state.rebuild((b) => b
    //       ..GetUrlsserror = ""
    //       ..GetUrlsSuccess = true
    //       ..GetUrlsisLoading = false
    //       ..Urls.replace(date)
    //     );
    //   } catch (e) {
    //     yield state.rebuild((b) => b
    //       ..GetUrlsserror = "$e"
    //       ..GetUrlsSuccess = false
    //       ..GetUrlsisLoading = false
    //       ..Urls = null
    //     );
    //   }
    // }
    // if (event is SendMessage) {
    //   try {
    //     yield state.rebuild((b) => b
    //       ..isLoading = true
    //       ..error = ""
    //       ..success = false
    //       ..SendMessage = null
    //     );
    //
    //     final date = await _repository.SendMessage(event.name!, event.Email!, event.title!, event.body!);
    //
    //     print('get Success data $date');
    //     yield state.rebuild((b) => b
    //       ..isLoading = false
    //       ..error = ""
    //       ..success = true
    //       ..SendMessage.replace(date)
    //     );
    //   } catch (e) {
    //     yield state.rebuild((b) => b
    //       ..error = "$e"
    //       ..success = false
    //       ..isLoading = false
    //       ..SendMessage = null
    //     );
    //   }
    // }
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
