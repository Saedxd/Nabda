library HomeScreen_State;


import 'dart:io';
import 'package:built_value/built_value.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:testnew/models/AdminsModel/AdminDataModel.dart';
import 'package:testnew/models/GetUrlsModel/GetUrlDataModel.dart';
import 'package:testnew/models/PostsModel/PostsData.dart';
import 'package:testnew/models/SendMessageModel/SendMessageModel.dart';

part 'HomeScreen_State.g.dart';

abstract class HomeScreenState implements Built<HomeScreenState, HomeScreenStateBuilder>   {
  // fields go here
  String? get error;
  bool? get isLoading;
  bool? get success;

  String? get  GetPostserror;
  bool? get GetPostsisLoading;
  bool? get GetpostsSuccess;

  String? get GetAdminserror;
  bool? get GetAdminsisLoading;
  bool? get GetAdminsSuccess;

  String? get GetUrlsserror;
  bool? get GetUrlsisLoading;
  bool? get GetUrlsSuccess;

  PostsData? get posts;
  GetUrlDataModel? get Urls;
  AdminDataModel? get Admins;
  SendMessageModel? get SendMessage;

  HomeScreenState._();

  factory HomeScreenState([updates(HomeScreenStateBuilder b)]) = _$HomeScreenState;
  factory HomeScreenState.initail() {
    return HomeScreenState((b) => b
        ..error =""
      ..isLoading = false
      ..success = false
        ..GetPostserror =""
        ..GetAdminserror =""
        ..GetUrlsserror =""
        ..success = false
        ..GetAdminsSuccess = false
        ..GetpostsSuccess = false
        ..GetUrlsSuccess = false
        ..isLoading = false
        ..GetAdminsisLoading = false
        ..GetUrlsisLoading = false
        ..GetPostsisLoading = false
        ..posts = null
        ..Admins = null
        ..Urls = null
        ..SendMessage = null
    );
  }




}
