library HomeScreen_State;


import 'dart:io';
import 'package:built_value/built_value.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:testnew/models/UserDataModel/UserDataModel.dart';

part 'HomeScreen_State.g.dart';

abstract class HomeScreenState implements Built<HomeScreenState, HomeScreenStateBuilder>   {
  // fields go here
  String? get error;
  bool? get isLoading;
  bool? get success;
  UserDataModel? get UserData;

  HomeScreenState._();

  factory HomeScreenState([updates(HomeScreenStateBuilder b)]) = _$HomeScreenState;
  factory HomeScreenState.initail() {
    return HomeScreenState((b) => b
        ..error =""
        ..success = false
        ..isLoading = false
    );
  }




}
