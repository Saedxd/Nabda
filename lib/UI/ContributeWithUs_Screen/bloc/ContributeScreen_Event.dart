// ignore_for_file: non_constant_identifier_names

library ContributeScreen_Event;

import 'dart:convert';
import 'dart:io';
import 'package:built_value/built_value.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'ContributeScreen_Event.g.dart';

abstract class ContributeScreenEvent{}


abstract class SendVol extends ContributeScreenEvent
    implements Built<SendVol, SendVolBuilder> {
  String? get gender;
  String? get uni_sp;
  String? get area;
  String? get street;
  String? get phone;
  String? get email;
  String? get note;
  String? get full_name;
  String? get old;
  String? get noid;

  SendVol._();
  factory SendVol([Function(SendVolBuilder b) updates]) = _$SendVol;
}

abstract class ChangeState extends ContributeScreenEvent
    implements Built<ChangeState, ChangeStateBuilder> {

  ChangeState._();
  factory ChangeState([Function(ChangeStateBuilder b) updates]) = _$ChangeState;
}