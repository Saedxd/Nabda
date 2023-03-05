library ContributeScreen_State;


import 'dart:io';
import 'package:built_value/built_value.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:testnew/models/AddVolModel/AddVolModel.dart';
import 'package:testnew/models/AdminsModel/AdminDataModel.dart';
import 'package:testnew/models/GetUrlsModel/GetUrlDataModel.dart';
import 'package:testnew/models/PostsModel/PostsData.dart';
import 'package:testnew/models/SendMessageModel/SendMessageModel.dart';

part 'ContributeScreen_State.g.dart';

abstract class ContributeScreenState implements Built<ContributeScreenState, ContributeScreenStateBuilder>   {
  // fields go here
  String? get error;
  bool? get isLoading;
  bool? get success;

  AddVolModel? get AddVol;

  ContributeScreenState._();

  factory ContributeScreenState([updates(ContributeScreenStateBuilder b)]) = _$ContributeScreenState;
  factory ContributeScreenState.initail() {
    return ContributeScreenState((b) => b
        ..error =""
      ..isLoading = false
      ..success = false
        ..AddVol = null
    );
  }




}
