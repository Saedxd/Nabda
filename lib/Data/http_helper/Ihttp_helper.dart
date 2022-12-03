// ignore_for_file: file_names

import 'dart:io';

import 'package:testnew/models/UserDataModel/UserDataModel.dart';




abstract class IHttpHelper {



 Future<UserDataModel> Login(String Email, String password,String fcmToken);
  // Future<GetGenderModel> GetGenders();

}

