// ignore_for_file: non_constant_identifier_names

library LoginScreen_Event;

import 'dart:convert';
import 'dart:io';
import 'package:built_value/built_value.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'LoginScreen_Event.g.dart';

abstract class LoginScreenEvent{}



abstract class Login extends LoginScreenEvent
    implements Built<Login, LoginBuilder> {

  String? get Email;
  String? get FcmToken;
  String? get Password;
  Login._();
  factory Login([Function(LoginBuilder b) updates]) = _$Login;
}
