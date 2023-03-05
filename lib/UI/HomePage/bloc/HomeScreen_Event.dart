// ignore_for_file: non_constant_identifier_names

library HomeScreen_Event;

import 'dart:convert';
import 'dart:io';
import 'package:built_value/built_value.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'HomeScreen_Event.g.dart';

abstract class HomeScreenEvent{}

abstract class GetPosts extends HomeScreenEvent
    implements Built<GetPosts, GetPostsBuilder> {

  GetPosts._();
  factory GetPosts([Function(GetPostsBuilder b) updates]) = _$GetPosts;
}
abstract class GetAdmins extends HomeScreenEvent
    implements Built<GetAdmins, GetAdminsBuilder> {

  GetAdmins._();
  factory GetAdmins([Function(GetAdminsBuilder b) updates]) = _$GetAdmins;
}

abstract class GetUrls extends HomeScreenEvent
    implements Built<GetUrls, GetUrlsBuilder> {

  GetUrls._();
  factory GetUrls([Function(GetUrlsBuilder b) updates]) = _$GetUrls;
}

abstract class SendMessage extends HomeScreenEvent
    implements Built<SendMessage, SendMessageBuilder> {
  String? get name;
  String? get Email;
  String? get title;
  String? get body;
  SendMessage._();
  factory SendMessage([Function(SendMessageBuilder b) updates]) = _$SendMessage;
}
abstract class ChangeState extends HomeScreenEvent
    implements Built<ChangeState, ChangeStateBuilder> {

  ChangeState._();
  factory ChangeState([Function(ChangeStateBuilder b) updates]) = _$ChangeState;
}