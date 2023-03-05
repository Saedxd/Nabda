//
library AdminModel;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:testnew/models/serializer/serializer.dart';


part 'AdminModel.g.dart';

abstract class AdminModel
    implements Built<AdminModel,AdminModelBuilder> {

  int? get id;
  int? get noid;
  int? get salary;
  int? get co_year;
  int? get phone;
  String? get name;
  String? get email;
  String? get gender;
  String? get email_verified_at;
  String? get full_name;
  String? get birth;
  String? get degree;
  String? get uni_sp;
  String? get emp_name;
  String? get area;
  String? get street;
  String? get can;
  String? get note;
  String? get photo_name;
  String? get cv_name;
  String? get deleted_at;
  String? get created_at;
  String? get updated_at;

  AdminModel._();
  factory AdminModel([void Function(AdminModelBuilder b)? updates]) =  _$AdminModel;
  String toJson() {
    return json
        .encode(serializers.serializeWith(AdminModel.serializer, this));
  }
  static AdminModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        AdminModel.serializer, json.decode(jsonString));
  }

  static Serializer<AdminModel> get serializer => _$adminModelSerializer;
}

