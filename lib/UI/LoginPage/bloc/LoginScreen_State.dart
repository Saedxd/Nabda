library LoginScreen_State;


import 'dart:io';
import 'package:built_value/built_value.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:testnew/models/UserDataModel/UserDataModel.dart';

part 'LoginScreen_State.g.dart';

abstract class LoginScreenState implements Built<LoginScreenState, LoginScreenStateBuilder>   {
  // fields go here
  String? get error;
  bool? get isLoading;
  bool? get success;
  UserDataModel? get UserData;

  LoginScreenState._();

  factory LoginScreenState([updates(LoginScreenStateBuilder b)]) = _$LoginScreenState;
  factory LoginScreenState.initail() {
    return LoginScreenState((b) => b
        ..error =""
        ..success = false
        ..isLoading = false
    );
  }




}
