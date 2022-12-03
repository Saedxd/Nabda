import 'dart:convert';
import 'dart:io';

import 'package:testnew/models/UserDataModel/UserDataModel.dart';

import '../http_helper/Ihttp_helper.dart';
import '../prefs_helper/iprefs_helper.dart';
import 'irepository.dart';

class Repository implements IRepository {
  IHttpHelper _ihttpHelper;
  IPrefsHelper _iprefHelper;

  Repository(this._ihttpHelper, this._iprefHelper);

  // Future<GetGenderModel> GetGenders() async {
  //   final Data = await _ihttpHelper.GetGenders();
  //   return Data;
  // }
  //
  // Future<UserData> GoogleLogin(
  //     String Email,
  //     String name,
  //     String fcmToken,
  //     String avatar,
  //     )async{
  //   final Data = await _ihttpHelper.GoogleLogin(Email, name, fcmToken, avatar);
  //
  //   return Data;
  // }
  

  // Future<UserData> LoginSocial(String Token,String fcmToken,) async {
  //   // String auth = await _iprefHelper.getToken();
  //   // print(auth);
  // //  final Data = await _ihttpHelper.LoginSocial(Token, fcmToken);
  //
  //   return Data;
  // }

Future<UserDataModel> Login(String Email,String Password,String fcmToken,) async {

 final Data = await _ihttpHelper.Login(Email, Password, fcmToken);

  return Data;
}
}
